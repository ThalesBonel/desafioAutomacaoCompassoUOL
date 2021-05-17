module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    element  :logo, '.logo.img-responsive'
    element  :btn_contact_us, '#contact-link a'
    element  :btn_go_to_sign_in, '.header_user_info a.login'
    element  :input_search_form, '#search_query_top'
    element  :search_button, '.button-search'
    element  :input_newsletter_footer_email, 'newsletter-input'
    element  :btn_newsletter_footer_register, '.form-group .btn.btn-default.button.button-small'

    def search(query = "")
      input_search_form.set(query)
    end

    def search_btn
      search_button.click
    end


  end
end
