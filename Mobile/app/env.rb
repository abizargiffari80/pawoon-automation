require 'appium_lib'
require 'pry'
require 'dotenv'
require 'appom'
require 'byebug'
require 'chunky_png'
require 'active_support'
require 'active_support/core_ext'
require 'active_support/core_ext/hash/indifferent_access'
require 'require_all'
require 'parallel_tests/tasks'
require 'rspec/expectations'
require 'data_magic'
require_relative 'helpers/base_helper'
require 'yaml'
require 'rspec'

include BaseHelper
include RSpec::Matchers

Dotenv.load

$root_directory = Dir.pwd
DataMagic.yml_directory = "#{$root_directory}/data"

appium_lib_options = {
    server_url: 'http://127.0.0.1:4723/wd/hub'
}

$capabilities = {
    build: 'Android Test Ruby',
    name: 'login case',
    deviceName: 'emulator-5554',
    automationName: 'UiAutomator2',
    platformName: 'Android',
    platformVersion: '7.1.2',
    autoGrantPermissions: 'true',
    app: '/Users/Pawoon/OneDrive/Desktop/Ruby Pawoon Automation/Mobile/app/installer/com.pawoon.pos-225-v2.17.0-staging.apk',
}

Appom.register_driver do
  options = {
    appium_lib: appium_lib_options,
    caps: $capabilities
  }
  $driver = Appium::Driver.new(options, false)
end

command = "appium -a 127.0.0.1 -p 4723"
pid = Process.spawn(command)

# clear report files
report_root = File.absolute_path('./report')

if ENV['REPORT_PATH'].nil?
  puts ' ========Deleting old reports ang logs========='
  FileUtils.rm_rf(report_root, secure: true)
end

ENV['REPORT_PATH'] ||= Time.now.strftime('%F_%H-%M-%S')
path = "#{report_root}/#{ENV['REPORT_PATH']}"
FileUtils.mkdir_p path