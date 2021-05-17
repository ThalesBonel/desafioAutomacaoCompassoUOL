module Pages
  
  class CartPage < SitePrism::Page

    element :cart_product_color, '#order-detail-content .cart_description small > a'
    element :cart_product_price, '#total_product'
    element :shipping_price, '#total_shipping'
    element :total_price, '#total_price'


    def color_size_validation
      product_validation = cart_product_color.text.gsub(',','').split(" ")
    end  

    def product_price
      cart_product_price.text
    end

    def get_prices
      price_product_cart = cart_product_price.text.split("$")[1].to_i
      price_shipping_cart = shipping_price.text.split("$")[1].to_i
      price_total_cart = total_price.text.split("$")[1].to_i
      
      [price_product_cart.round(2),price_shipping_cart, price_total_cart.round(2)]
    end
  end
end








   