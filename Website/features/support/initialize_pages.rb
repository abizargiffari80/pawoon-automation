class PawoonPages
    def loginpage
        @loginpage = LoginPage.new
    end

    def dashboard
        @dashboard = DashboardPage.new
    end

    def productpage
        @productpage = ProductPage.new
    end
end