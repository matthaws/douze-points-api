json.extract! entry,  :id,
                      :artist,
                      :song_title,
                      :final_score,
                      :final_ranking,
                      :video_url,
                      :finalist,
                      :country_id,
                      :contest_id,
                      :language

  json.comment_ids entry.comments.order(created_at: desc).pluck(:id)
