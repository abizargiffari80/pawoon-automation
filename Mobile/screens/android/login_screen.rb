class LoginScreenAndroid < Appom::Page
    element :button_masuk_disini, :id, "com.pawoon.pos.staging:id/tv_login"
    element :input_email_login, :id, "com.pawoon.pos.staging:id/etEmail"
    element :input_password_login, :id, "com.pawoon.pos.staging:id/etPassword"
    element :button_masuk_login, :id, "com.pawoon.pos.staging:id/btnSubmit"
    #element :input_email_login, :accessibility_id, "TextInputAlmatEmailLogin"
    #element :input_password_login, :accessibility_id, "TextInputKataSandiLogin"
    #element :button_masuk_login, :accessibility_id, "ButtonMasukLogin"
end