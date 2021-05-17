module Pages
  
  class ProductPage < SitePrism::Page
    element :product_price, '#our_price_display'
    element :color, '#color_11' #possível melhora - buscar color de forma randomica
    element :size, '#group_1 [value="2"]' #possível melhora - buscar size de forma randomica
    element :btn_add_to_cart, '#add_to_cart'
    element :btn_checkout, '.btn.btn-default.button.button-medium'

    def customize_product
      color.click
      size.click
    end

    def get_price
      product_price.text
    end

    def add_to_cart
      btn_add_to_cart.click
      has_button?('btn_checkout', wait: 3) 
      btn_checkout.click
    end


  end
end