json.user do
  json.extract! user, :username, :avatar_url, :email, :bio
  json.scoresheet_ids user.scoresheets.pluck(:id)
end

json.auth_token token
