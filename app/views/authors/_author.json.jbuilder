json.extract! author, :id, :first_name, :last_name, :slug, :pen_name, :created_at, :updated_at
json.url author_url(author, format: :json)
