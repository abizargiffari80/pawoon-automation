Before do |scenario|
    Capybara.app_host = 'https://my-v2-staging.pawoon.com/'
    Capybara.javascript_driver = :chrome
    #page.driver.browser.manage.window.resize_to(1920,1080)
    page.driver.browser.manage.window.maximize
  end
  
  After do |scenario|
    ## logic that will run after each scenario
  
    if(scenario.failed?)
    # TODO: take screenshots
    end
  
  end
  
  AfterStep do |scenario|
    # logic that will run after each step in a scenario
  end
