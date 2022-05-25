Given 'user access splash screen' do
    sleep(5)
    @app.welcomepage.button_masuk_disini.click
    # @app.welcomepage.button_masuk_disini.click
    #@app.welcome.masuk_text1_splashscreen.click
    #sleep(3)
    #@app.login.input_email_login.displayed?
end

When 'user try to login' do
    #@app.loginpage.input_email_login.send_keys "abizar.giffari+tokoikan@pawoon.com"
    #@app.loginpage.input_password_login.send_keys "123456"
    @app.loginpage.input_email_login.send_keys "automation@pawoon.com"
    @app.loginpage.input_password_login.send_keys "llllll"
    @app.loginpage.button_masuk_login.click
end

Then 'user verity successfuly login' do
    # Pilih Outlet
    waitFor {@app.afterloginpage.text_pilih_outlet}
    expect(@app.afterloginpage.text_pilih_outlet.displayed?).to be true
    @app.afterloginpage.text_pilih_outlet.click
    # Pilih Device
    waitFor {@app.afterloginpage.text_pilih_device}
    #byebug
    @app.afterloginpage.text_pilih_device.click
    #waitFor {@app.afterloginpage.has_text_data_sebelumnya}
    #if @app.afterloginpage.has_text_data_sebelumnya
    if @app.afterloginpage.text_data_sebelumnya.displayed?
        @app.afterloginpage.text_data_sebelumnya_ya.click
    end
    # if @app.afterloginpage.text_data_sebelumnya.displayed?
    #     @app.afterloginpage.text_data_sebelumnya_ya.click
    # elsif  @app.afterloginpage.text_ganti_perangkat.displayed?
    #     @app.afterloginpage.text_ganti_perangkat_ganti.click
    # end
    
    sleep(25)
    # Pilih Operator
    @app.afterloginpage.text_automation.click
    sleep(2)
    # Loop btn 1
    $i = 0
    $num = 4
    while $i < $num  do
       @app.afterloginpage.text_btn_1.click
        $i +=1
    end 
    sleep(5)
    expect(@app.afterloginpage.img_produk.displayed?).to be true
    # Logout
    # @app.logoutpage.btn_burger.click
    # sleep(1)
    # @app.logoutpage.btn_pengaturan.click
    # sleep(1)
    # @app.logoutpage.btn_informasi.click
    # sleep(1)
    # @app.logoutpage.btn_logout.click
    # sleep(1)
    # @app.logoutpage.btn_ya.click
    # sleep(2)
    # expect(@app.loginpage.input_email_login.displayed?).to be true
    # sleep(2)
end