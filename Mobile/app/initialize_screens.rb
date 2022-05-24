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
    def logoutpage 
        @logoutpage ||= LogoutPage.new
    end
  end