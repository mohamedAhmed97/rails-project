json.extract! product, :id, :title, :price, :description, :brand_id, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
