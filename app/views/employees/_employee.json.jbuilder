json.extract! employee, :name, :id, :created_at, :updated_at
json.url post_url(employee, format: :json)
