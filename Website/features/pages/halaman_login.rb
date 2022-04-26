def input_email()
    find('input.form-control.email-type').set('abizar.giffari+tokoikan@pawoon.com')
end

def input_passowrd()
    find('#loginForm > div:nth-child(4) > input').set('123456')
end

def click_login()
    click_button 'Login'
end

def verify_dihalaman_login()
    expect(page).to have_content 'Selamat Datang Kembali'
end