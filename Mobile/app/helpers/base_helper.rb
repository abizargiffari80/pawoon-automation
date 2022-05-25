module BaseHelper
    def take_screenshot_and_resize(scenario)
    # example output: purchase_invoice_feature_15.png, sales_invoice_feature_20.png. The number behind feature name represents the scenario line which is failed
    screenshot_dir = File.absolute_path("./report/screenshots/#{ENV['PLATFORM']}")
    filename = "#{scenario.feature.name.downcase.tr(' ', '_')}_#{scenario.location.line}.png"
    full_path = "#{screenshot_dir}/#{filename}"
    FileUtils.mkdir_p(screenshot_dir) unless File.directory?(screenshot_dir)
    $driver.screenshot(full_path)
    img = ChunkyPNG::Image.from_file(full_path)
    img = img.resize((img.width * 0.5).floor, (img.height * 0.5).floor) # the default screenshot size is too large
    img.save(full_path)

    full_path
  rescue Exception => e
    raise e.message
  end

  def waitFor(element:false)
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until {yield}
  end

end