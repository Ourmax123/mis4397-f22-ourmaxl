json.extract! recipe, :id, :title, :author, :image_url, :description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
