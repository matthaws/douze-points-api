json.extract! comment, :id, :body, :parent_id
json.user do
  json.extract! comment.user, :username, :avatar_url
end
