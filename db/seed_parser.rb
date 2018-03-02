def parse_seeds
  seeds = File.readlines('db/raw_seeds.txt').map(&:chomp)
  contest = nil
  seeds.each do |seed|
    next if seed == ""
    seed_parts = seed.split(" ")
    if seed_parts[1] == "Final,"
      seed_parts.map! { |part| part.chomp(",") }
      host_country = Country.find_by_name(seed_parts[2])
      contest = Contest.create({
        year: seed_parts.first,
        location: seed_parts[3],
        host_country: host_country
      })

    else
      final_ranking, final_score, order, country = seed_parts
      country = Country.find_by_name(country)
      artist, song = seed_parts[4..-1].join(" ").split(" / ")
      entry = Entry.create({
        artist: artist,
        song_title: song,
        final_score: final_score,
        final_ranking: final_ranking,
        finalist: true,
        country: country,
        contest: contest
        })

        entry.contest.winning_entry = entry if entry.final_ranking == 1
    end
  end
end
