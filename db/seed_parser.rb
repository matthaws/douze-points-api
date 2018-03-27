def parse_contests
  CSV.foreach("db/contests.csv") do |contest|
    next if contest.first == "Year"
    con = Contest.find_by_year(contest.first)
    unless con
      con = Contest.new
      con.year = contest.first
      con.host_country = Country.find_by_name(contest[1])
      con.location = "#{contest[2]}, #{contest[1]}"
      con.save!
    end
  end
end

def parse_years(year_file)
  CSV.foreach("db/#{year_file}.csv") do |entry|
    next if entry.first == "Final Ranking"
    new_entry = Entry.new
    new_entry.final_ranking = entry.first
    new_entry.contest = Contest.find_by_year(entry.last)

    new_entry.country = Country.find_by_name(entry[3])
    new_entry.final_score = entry[1]
    new_entry.song_title = entry[5]
    new_entry.artist = entry[4]
    new_entry.video_url = entry[6]
    new_entry.finalist = true

    new_entry.save
    if entry.first.to_i == 1
      new_entry.contest.winning_entry = new_entry
      new_entry.contest.save
    end
  end
end
