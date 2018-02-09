json.scoresheets @scoresheets do |scoresheet|
  json.set! scoresheet.id do
    json.partial! "scoresheets/scoresheet", scoresheet: scoresheet
  end
end
