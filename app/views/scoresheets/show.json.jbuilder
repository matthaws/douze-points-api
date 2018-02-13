json.scoresheet do
  json.set! @scoresheet.id do
    json.partial! "scoresheets/scoresheet", scoresheet: @scoresheet
  end
end
json.scorings do
  @scoresheet.scorings.each do |scoring|
    json.set! scoring.id do
      json.partial! "scorings/scoring", scoring: scoring
    end
  end
end
json.entries do
  @scoresheet.entries.each do |entry|
    json.set! entry.id do
      json.partial! "entries/entry", entry: entry
    end
  end
end
