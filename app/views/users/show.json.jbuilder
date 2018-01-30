json.user do
  json.partial! 'users/user', user: @user
end
json.auth_token @token
