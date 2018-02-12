json.extract! user, :username, :id, :avatar_url, :email, :bio
json.scoresheet_ids user user.scoresheets.pluck(:id)
