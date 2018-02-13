json.entry do
  json.partial! 'entries/entry', entry: @entry
end

json.contest do
  json.partial! 'contests/contest', contest: @entry.contest
end
