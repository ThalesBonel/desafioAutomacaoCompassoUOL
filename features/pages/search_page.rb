require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    element :search_text, '.alert.alert-warning'
    elements :in_stock, '.availability .available-now'
    element :select_product, '.product_list.grid.row > li:first-child'
  
    sections :products, Sections::Product, '.product-container'

    def search_message
      search_text.text
    end

    def product_available
      has_css?('in_stock', wait: 3) 
      in_stock[0].text
    end

    def get_product
      select_product.click
    end

  end
end
