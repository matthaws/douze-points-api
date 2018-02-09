json.scoresheet do
  json.partial! "scoresheets/scoresheet", scoresheet: @scoresheet
end
json.scorings @scoresheet.scorings do |scoring|
  json.partial! "scorings/scoring", scoring: scoring
end
json.entries @scoresheet.entries do |entry|
  json.partial! "entries/entry", entry: entry
end
