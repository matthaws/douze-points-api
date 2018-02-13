json.user do
  json.partial! 'users/user', user: @user
end

#theoretically we could also get a selection of user scorings here and display
#some kind of "other users have rated this as x" section after you've given it
#a rating
