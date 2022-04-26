Given('User sudah Login') do
  verify_dashboard()
  end
  
  When('User Logout') do
    logout()
    #kalau pake xpath
    #find(:xpath, "//*[@id='user-menu-dropdown']/span").click
    #find(:xpath, "//*[@id='notification']/li/span[2]/ul/li[2]/a").click
  end
  
  Then('User logout sukses') do
    verify_dihalaman_login()
  end