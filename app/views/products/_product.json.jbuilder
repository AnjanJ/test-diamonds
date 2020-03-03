json.extract! product, :id, :name, :type, :model, :brand, :year, :RAM, :external_storage, :created_at, :updated_at
json.url product_url(product, format: :json)
