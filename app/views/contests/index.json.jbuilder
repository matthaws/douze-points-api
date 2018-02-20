json.contests do
  @contests.each do |contest|
    json.set! contest.id do
      json.partial! "contests/contest", contest: contest
    end
  end
end
