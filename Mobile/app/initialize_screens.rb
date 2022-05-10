class InitializeScreens
    def loginpage
        @loginpage ||= LoginPage.new
    end
    def welcomepage
        @Welcomepage ||= WelcomePage.new
    end
    def afterloginpage
        @afterloginpage ||= AfterLoginPage.new
    end

  end