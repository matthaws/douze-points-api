json.contest do
  json.partial! "contests/contest", contest: @contest
end

json.entries do
  @contest.entries.each do |entry|
    json.set! entry.id do
      json.partial! "entries/entry", entry: entry
    end
  end
end
