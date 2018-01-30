json.user do
  json.extract! user, :username, :avatar_url, :email, :bio
end
json.auth_token token
