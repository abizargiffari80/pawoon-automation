def verify_dashboard()
    expect(page).to have_content 'Hi, Toko Ikan'
end

def logout()
    find('span.mobile-hidden').click
    find('a.logout').click
end