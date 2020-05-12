class Product < ApplicationRecord
    belongs_to :category
    belongs_to :brand
    belongs_to :store
    has_many :cart_items
    has_one_attached :image
    

    def self.search(search)
        if search
            where(['title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"])
        else
            all
        end
    end
end
