module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, '.home'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '.icon-user.left'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, '.lost_password.form-group > a'
    element  :btn_sign_in, '.icon-lock.left'
    element  :alert_message_authentication_failed, 'div.alert.alert-danger > ol > li'
  
    def login(email, password)  
      input_login_email.send_keys(email)  
      input_login_password.send_keys(password) 
      click_on 'SubmitLogin' 
    end
    
    def getAlert_loginPage
      alert_message_authentication_failed.text
    end
  
  end
  
end



