Given('User berada di halaman login Pawoon') do
  visit '/login'
  end
  
  When('User login with valid credential') do
    sleep 1
    @pusathalaman.loginpage.input_email.click
    @pusathalaman.loginpage.input_email.set "abizar.giffari+tokoikan@pawoon.com"
    @pusathalaman.loginpage.input_password.set "123456"
    @pusathalaman.loginpage.btn_login.click

    #kalo find bisa pake css dan xpath
    #kalo masih ga ketemu pake selector
    #find(:css, 'input.form-control.email-type').click        -> ini kalau css ambil manual
    #find(:css, 'loginForm > div:nth-child(3) > input').click -> ini kalau css ambil dari selector
    #find(:xpath, '//*[@id="loginForm"]/div[2]/input')        -> ini xpath
    
    #find('input.form-control.email-type').set('abizar.giffari+tokoikan@pawoon.com')
    #find('#loginForm > div:nth-child(4) > input').set('123456')
    
    #kalo fill in pake id
    #fill_in 'input.form-control.email-type', with: 'abizar.giffari+tokoikan@pawoon.com'
    #fill_in 'Password', with: '123456'
  end
  
  Then('User verify login success') do
    #expect(page).to have_content 'Hi, Toko Ikan'
    sleep 3
    amount = split_string(@pusathalaman.dashboard.txt_sales_total.text)
    expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
    expect(amount).to eql 0
    p "angka: #{amount}"
    
    status = amount == 0? 'bener' : 'salah'

    p status
    

  end

  def split_string(value)
    value.delete!("Rp.").to_i
  end