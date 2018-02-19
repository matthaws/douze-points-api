# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
amazon_path = "https://s3.amazonaws.com/douze-points-dev/"

Country.destroy_all
Contest.destroy_all
Entry.destroy_all

albania = Country.create!(name: "Albania", flag_url: "#{amazon_path}heart_flags/albania.png")
armenia = Country.create!(name: "Armenia", flag_url: "#{amazon_path}heart_flags/armenia.png")
australia = Country.create!(name: "Australia", flag_url: "#{amazon_path}flags/Australia.jpg")
austria = Country.create!(name: "Austria", flag_url: "#{amazon_path}heart_flags/austria.png")
azerbaijan = Country.create!(name: "Azerbaijan", flag_url: "#{amazon_path}heart_flags/azerbaijan.png")
belarus = Country.create!(name: "Belarus", flag_url: "#{amazon_path}heart_flags/belarus.png")
belgium = Country.create!(name: "Belgium", flag_url: "#{amazon_path}heart_flags/belgium.png")
bulgaria = Country.create!(name: "Bulgaria", flag_url: "#{amazon_path}heart_flags/bulgaria.png")
croatia = Country.create!(name: "Croatia", flag_url: "#{amazon_path}heart_flags/croatia.png")
cyprus = Country.create!(name: "Cyprus", flag_url: "#{amazon_path}heart_flags/cyprus.png")
czech = Country.create!(name: "Czech Republic", flag_url: "#{amazon_path}flags/Czech_Republic.jpg")
denmark = Country.create!(name: "Denmark", flag_url: "#{amazon_path}heart_flags/denmark.png")
estonia = Country.create!(name: "Estonia", flag_url: "#{amazon_path}heart_flags/estonia.png")
finland = Country.create!(name: "Finland", flag_url: "#{amazon_path}heart_flags/finland.png")
france = Country.create!(name: "France", flag_url: "#{amazon_path}heart_flags/france.png", big_five: true)
georgia = Country.create!(name: "Georgia", flag_url: "#{amazon_path}heart_flags/georgia.png")
germany = Country.create!(name: "Germany", flag_url: "#{amazon_path}heart_flags/germany.png", big_five: true)
greece = Country.create!(name: "Greece", flag_url: "#{amazon_path}heart_flags/greece.png")
hungary = Country.create!(name: "Hungary", flag_url: "#{amazon_path}heart_flags/hungary.png")
iceland = Country.create!(name: "Iceland", flag_url: "#{amazon_path}heart_flags/iceland.png")
ireland = Country.create!(name: "Ireland", flag_url: "#{amazon_path}heart_flags/ireland.png")
israel = Country.create!(name: "Israel", flag_url: "#{amazon_path}flags/Israel.jpg")
italy = Country.create!(name: "italy", flag_url: "#{amazon_path}heart_flags/italy.png", big_five: true)
latvia = Country.create!(name: "Latvia", flag_url: "#{amazon_path}heart_flags/latvia.png")
lithuania = Country.create!(name: "Lithuania", flag_url: "#{amazon_path}heart_flags/lithuania.png")
macedonia = Country.create!(name: "Macedonia", flag_url: "#{amazon_path}heart_flags/macedonia.png")
malta = Country.create!(name: "Malta", flag_url: "#{amazon_path}heart_flags/Malta.png")
moldova = Country.create!(name: "Moldova", flag_url: "#{amazon_path}heart_flags/moldova.png")
montenegro = Country.create!(name: "Montenegro", flag_url: "#{amazon_path}heart_flags/montenegro.png")
netherlands = Country.create!(name: "Netherlands", flag_url: "#{amazon_path}heart_flags/netherlands.png")
norway = Country.create!(name: "Norway", flag_url: "#{amazon_path}heart_flags/norway.png")
poland = Country.create!(name: "Poland", flag_url: "#{amazon_path}heart_flags/poland.png")
portugal = Country.create!(name: "Portugal", flag_url: "#{amazon_path}heart_flags/portugal.png")
romania = Country.create!(name: "Romania", flag_url: "#{amazon_path}heart_flags/romania.png")
russia = Country.create!(name: "Russia", flag_url: "#{amazon_path}heart_flags/russia.png")
san_marino = Country.create!(name: "San Marino", flag_url: "#{amazon_path}heart_flags/san-marino.png")
serbia = Country.create!(name: "Serbia", flag_url: "#{amazon_path}heart_flags/serbia.png")
slovenia = Country.create!(name: "Slovenia", flag_url: "#{amazon_path}heart_flags/slovenia.png")
spain = Country.create!(name: "Spain", flag_url: "#{amazon_path}heart_flags/spain.png", big_five: true)
sweden = Country.create!(name: "Sweden", flag_url: "#{amazon_path}heart_flags/sweden.png")
switzerland = Country.create!(name: "Switzerland", flag_url: "#{amazon_path}heart_flags/switzerland.png")
ukraine = Country.create!(name: "Ukraine", flag_url: "#{amazon_path}heart_flags/ukraine.png")
uk = Country.create!(name: "United Kingdom", flag_url: "#{amazon_path}heart_flags/united-kingdom.png")

#2017 Contest Seed Data
twentyseventeen = Contest.new
twentyseventeen.year = 2017
twentyseventeen.location = "Kyiv, Ukraine"
twentyseventeen.host_country = ukraine
twentyseventeen.save!

sobral = twentyseventeen.entries.create!(
  artist: "Salvador Sobral",
  song_title: "Amar Pelos Dois",
  final_ranking: 1,
  final_score: 758,
  finalist: true,
  country: portugal,
  language: "Portuguese",
  video_url: "https://www.youtube.com/watch?v=ymFVfzu-2mw"
)

twentyseventeen.winning_entry = sobral
twentyseventeen.save!

twentyseventeen.entries.create!(
  artist: "Kristian Kostov",
  song_title: "Beautiful Mess",
  final_ranking: 2,
  final_score: 615,
  finalist: true,
  country: bulgaria,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=nM7s8lBNdLg"
)

twentyseventeen.entries.create!(
  artist: "Sunstroke Project",
  song_title: "Hey Mamma",
  final_ranking: 3,
  final_score: 374,
  finalist: true,
  country: moldova,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=mvaLAs9cex4"
)

twentyseventeen.entries.create!(
  artist: "Blanche",
  song_title: "City Lights",
  final_ranking: 4,
  final_score: 363,
  finalist: true,
  country: belgium,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=xbomdE81_mA"
)

twentyseventeen.entries.create!(
  artist: "Robin Bengtsson",
  song_title: "I Can't Go On",
  final_ranking: 5,
  final_score: 344,
  finalist: true,
  country: sweden,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=1jSrBdN4b5c"
)

twentyseventeen.entries.create!(
  artist: "Francesco Gabbani",
  song_title: "Occidentali's Karma",
  final_ranking: 6,
  final_score: 334,
  finalist: true,
  country: italy,
  language: "Italian",
  video_url: "https://www.youtube.com/watch?v=Mj6tVGKzfhU"
)

twentyseventeen.entries.create!(
  artist: "Ilinca feat. Alex Florea",
  song_title: "Yodel It!",
  final_ranking: 7,
  final_score: 282,
  finalist: true,
  country: romania,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=TtJw_CLQCUw"
)

twentyseventeen.entries.create!(
  artist: "Origo",
  song_title: "Joci Pápai",
  final_ranking: 8,
  final_score: 200,
  finalist: true,
  country: hungary,
  language: "Hungarian",
  video_url: "https://www.youtube.com/watch?v=LflrKXL022U"
)

twentyseventeen.entries.create!(
  artist: "Isaiah Firebrace",
  song_title: "Don't Come Easy",
  final_ranking: 9,
  final_score: 173,
  finalist: true,
  country: australia,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=RiXEMYUqa3w"
)

twentyseventeen.entries.create!(
  artist: "Jowst",
  song_title: "Grab the Moment",
  final_ranking: 10,
  final_score: 158,
  finalist: true,
  country: norway,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=IPp37uz8vUs"
)

twentyseventeen.entries.create!(
  artist: "OG3NE",
  song_title: "Lights and Shadows",
  final_ranking: 11,
  final_score: 150,
  finalist: true,
  country: netherlands,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=TxYU6iVpI5c"
)

twentyseventeen.entries.create!(
  artist: "Alma",
  song_title: "Requiem",
  final_ranking: 12,
  final_score: 135,
  finalist: true,
  country: france,
  language: "French/English",
  video_url: "https://www.youtube.com/watch?v=Koi36aeRv7I"
)

twentyseventeen.entries.create!(
  artist: "Jacques Houdek",
  song_title: "My Friend",
  final_ranking: 13,
  final_score: 128,
  finalist: true,
  country: croatia,
  language: "English/Italian",
  video_url: "https://www.youtube.com/watch?v=Dxy1Gy3nuGU"
)

twentyseventeen.entries.create!(
  artist: "Dihaj",
  song_title: "Skeletons",
  final_ranking: 14,
  final_score: 120,
  finalist: true,
  country: azerbaijan,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=z_UNpD0AvFc"
)

twentyseventeen.entries.create!(
  artist: "Lucie Jones",
  song_title: "Never Give Up On You",
  final_ranking: 15,
  final_score: 111,
  finalist: true,
  country: uk,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=ac5xNUfzCY4"
)

twentyseventeen.entries.create!(
  artist: "Nathan Trent",
  song_title: "Running On Air",
  final_ranking: 16,
  final_score: 93,
  finalist: true,
  country: austria,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=SpPM1V3dqZE"
)

twentyseventeen.entries.create!(
  artist: "Navidband",
  song_title: "Historyja Majho Zyccia",
  final_ranking: 17,
  final_score: 83,
  finalist: true,
  country: belarus,
  language: "Belarusian",
  video_url: "https://www.youtube.com/watch?v=ElqbLPcTHAI"
)

twentyseventeen.entries.create!(
  artist: "Artsvik",
  song_title: "Fly With Me",
  final_ranking: 18,
  final_score: 79,
  finalist: true,
  country: armenia,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=Yw6LdDo7HxA"
)

twentyseventeen.entries.create!(
  artist: "Demy",
  song_title: "This is Love",
  final_ranking: 19,
  final_score: 77,
  finalist: true,
  country: greece,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=R_kLtgFPnbk"
)

twentyseventeen.entries.create!(
  artist: "Anja",
  song_title: "Where I Am",
  final_ranking: 20,
  final_score: 77,
  finalist: true,
  country: denmark,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=716rTFMgZQ4"
)

twentyseventeen.entries.create!(
  artist: "Hovig",
  song_title: "Gravity",
  final_ranking: 21,
  final_score: 68,
  finalist: true,
  country: cyprus,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=bxfQn7riJxo"
)

twentyseventeen.entries.create!(
  artist: "Kasia Moś",
  song_title: "Flashlight",
  final_ranking: 22,
  final_score: 64,
  finalist: true,
  country: poland,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=bmXlLBAu6IY"
)

twentyseventeen.entries.create!(
  artist: "Imri Ziv",
  song_title: "I Feel Alive",
  final_ranking: 23,
  final_score: 39,
  finalist: true,
  country: israel,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=eW2n2VmNLkw"
)

twentyseventeen.entries.create!(
  artist: "O.Torvald",
  song_title: "Time",
  final_ranking: 24,
  final_score: 36,
  finalist: true,
  country: ukraine,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=VKCIsDLd_Vo"
)

twentyseventeen.entries.create!(
  artist: "Levina",
  song_title: "Perfect Life",
  final_ranking: 25,
  final_score: 6,
  finalist: true,
  country: germany,
  language: "English",
  video_url: "https://www.youtube.com/watch?v=y7pUKkSrXFY"
)

twentyseventeen.entries.create!(
  artist: "Manel Navarro",
  song_title: "Do It for Your Lover",
  final_ranking: 26,
  final_score: 5,
  finalist: true,
  country: spain,
  language: "English/Spanish",
  video_url: "https://www.youtube.com/watch?v=9jO32_trJq4"
)
