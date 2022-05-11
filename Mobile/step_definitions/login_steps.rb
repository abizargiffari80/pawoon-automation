Given 'user access splash screen' do
    sleep(5)
    @app.welcomepage.button_masuk_disini.click
    #@app.welcome.masuk_text1_splashscreen.click
    #sleep(3)
    #@app.login.input_email_login.displayed?
end

When 'user try to login' do
    @app.loginpage.input_email_login.send_keys "abizar.giffari+tokoikan@pawoon.com"
    @app.loginpage.input_password_login.send_keys "123456"
    @app.loginpage.button_masuk_login.click
end

Then 'user verity successfuly login' do
    sleep(3)
    expect(@app.onboarding.text_botnavbar_onboarding.displayed?).to be true
end
