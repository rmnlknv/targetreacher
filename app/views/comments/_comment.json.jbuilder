json.extract! comment, :id, :message, :target_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
