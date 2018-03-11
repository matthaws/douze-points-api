json.country do
  json.partial! 'countries/country', country: @country
  json.entry_ids @country.entries.pluck(:id)
  json.hosted_years @country.hosted_contests.pluck(:year)
end

json.entries do
  @country.entries.each do |entry|
    json.set! entry.id do
      json.partial! 'entries/entry', entry: entry
      json.year entry.contest.year
    end
  end
end
