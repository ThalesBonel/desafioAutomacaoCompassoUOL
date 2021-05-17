Quando('encontrar o {string} disponivel') do |product|
  @home_page.search(product)
  @home_page.search_btn
  expect(@search_page.product_available).to eq("In stock")
  @search_page.get_product
  @product_page.customize_product
end

Então('devo conseguir adicionar esse produto ao carrinho') do
  @product_page.add_to_cart
  expect(@cart_page.color_size_validation[2]).to eq("Black")
  expect(@cart_page.color_size_validation[5]).to eq("M")
  expect(@cart_page.get_prices[2]).to eq(@cart_page.get_prices[0]+@cart_page.get_prices[1])
end