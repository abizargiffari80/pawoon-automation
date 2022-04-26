# def verify_dashboard()
#     expect(page).to have_content 'Hi, Toko Ikan'
# end

# def logout()
#     find('span.mobile-hidden').click
#     find('a.logout').click
# end

class DashboardPage < SitePrism::Page
    element :txt_toko_ikan, '#user-menu-dropdown span', text: "Hi, Toko Ikan"
    element :txt_sales_total, '.text-md.sales-total'
end