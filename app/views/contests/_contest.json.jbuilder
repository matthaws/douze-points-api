
json.extract! contest, :id, :year, :winning_entry_id, :location, :host_country
json.entry_ids contest.entries.pluck(:id)
