module Pages

  class LoggedPage < SitePrism::Page
    element :logged_message, '.page-heading'
    element :name, '.account span'

    def logged_user
      logged_message.text
    end

    def get_account_name
      name.text
    end

  end
  
end