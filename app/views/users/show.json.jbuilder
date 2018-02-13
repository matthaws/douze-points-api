json.user do
  json.partial! 'users/user', user: @user
end

json.countries do
  @countries.each do |country|
    json.set! country.id do
      json.partial! "countries/country", country: country
    end
  end
end
