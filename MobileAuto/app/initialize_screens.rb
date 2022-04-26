class InitializeScreens
    def login
        @login ||= LoginScreenAndroid.new
    end
    def welcome
        @welcome ||= WelcomeScreenAndroid.new
    end
    def onboarding
        @onboarding ||= OnboardingScreenAndroidn.new
    end

  end