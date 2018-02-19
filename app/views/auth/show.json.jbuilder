json.partial! 'auth/current_user', user: @user, token: @token

json.countries do
  @countries.each do |country|
    json.set! country.id do
      json.partial! "countries/country", country: country
    end
  end
end
