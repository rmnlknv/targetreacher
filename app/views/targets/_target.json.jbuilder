json.extract! target, :id, :title, :description, :user_id, :created_at, :updated_at
json.url target_url(target, format: :json)
