json.scoresheet do
  json.extract! scoresheet, :name, :user_id, :contest_id, :type
  json.scoring_ids scoresheet.scorings.pluck(:id)
  json.entry_ids scoresheet.entries.pluck(:id)
end
