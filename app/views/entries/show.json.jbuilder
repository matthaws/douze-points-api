json.entry do
  json.partial! 'entries/entry', entry: @entry

end

json.contest do
  json.partial! 'contests/contest', contest: @contest
end

json.comments do
  @entry.comments.each do |comment|
    json.set! comment.id do
      json.partial! 'comments/comment', comment: comment
    end
  end
end
