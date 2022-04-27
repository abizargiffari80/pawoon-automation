class DashboardPage < SitePrism::Page
    element :txt_toko_ikan, '#user-menu-dropdown span', text: "Hi, Toko Ikan"
    element :txt_sales_total, '.text-md.sales-total'
    element :btn_profile_span, '#user-menu-dropdown'
    element :btn_logout, 'li a.logout'
    #notification > li > span:nth-child(2) > ul > li:nth-child(2) > a
    #//*[@id="notification"]/li/span[2]/ul/li[2]/a
end