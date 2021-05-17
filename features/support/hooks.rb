Before do
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @logged_page = Pages::LoggedPage.new
  @product_page = Pages::ProductPage.new
  @cart_page = Pages::CartPage.new
end


AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  attach('screenshot', 'image/png')
end