json.extract! user, :name, :id, :email, :password_digest, :employee_number, :created_at, :updated_at
json.url post_url(user, format: :json)
