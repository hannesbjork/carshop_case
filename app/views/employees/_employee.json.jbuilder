json.extract! employee, :name, :id, :auth_level, :created_at, :updated_at
json.url post_url(employee, format: :json)
