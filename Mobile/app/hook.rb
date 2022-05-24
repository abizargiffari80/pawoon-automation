Before do |scenario|
  @app = InitializeScreens.new
end

AfterStep do
end

After do |scenario|
  if scenario.failed?
    p "Scenario gagal dijalankan #{scenario.name}"
    screenshot = take_screenshot_and_resize(scenario)
    base64_img = Base64.encode64(File.open(screenshot, 'r:UTF-8', &:read))
    embed(base64_img, 'image/png;base64')
    # $driver.close_app
  else
    p 'scenario sukses'
  end
  # $driver.reset
end

#at_exit do
#  system 'taskkill /F /IM node.exe'
#end