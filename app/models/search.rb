class Search < ApplicationRecord
    def products
        @products ||= find_products
    end


    def find_products
        products = Product.order(:title)
        products = Product.where("title LIKE ?", "%#{keywords}%") if keywords.present?
        products = Product.where(category_id: category_id) if category_id.present?
        products = Product.where(brand_id: brand_id) if brand_id.present?
        products = Product.where(price: price) if price.present?
        products
    end

end
