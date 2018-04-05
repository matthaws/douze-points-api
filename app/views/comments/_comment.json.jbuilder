json.extract! comment, :id, :body, :parent_id, :created_at
json.user do
  json.extract! comment.user, :username, :avatar_url, :id
end
