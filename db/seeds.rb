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
User.destroy_all
Scoresheet.destroy_all
Scoring.destroy_all


albania = Country.create!(name: "Albania", flag_url: "#{amazon_path}heart_flags/albania.png")
armenia = Country.create!(name: "Armenia", flag_url: "#{amazon_path}heart_flags/armenia.png")
australia = Country.create!(name: "Australia", flag_url: "#{amazon_path}heart_flags/australia.png")
austria = Country.create!(name: "Austria", flag_url: "#{amazon_path}heart_flags/austria.png")
azerbaijan = Country.create!(name: "Azerbaijan", flag_url: "#{amazon_path}heart_flags/azerbaijan.png")
belarus = Country.create!(name: "Belarus", flag_url: "#{amazon_path}heart_flags/belarus.png")
belgium = Country.create!(name: "Belgium", flag_url: "#{amazon_path}heart_flags/belgium.png")
bulgaria = Country.create!(name: "Bulgaria", flag_url: "#{amazon_path}heart_flags/bulgaria.png")
croatia = Country.create!(name: "Croatia", flag_url: "#{amazon_path}heart_flags/croatia.png")
cyprus = Country.create!(name: "Cyprus", flag_url: "#{amazon_path}heart_flags/cyprus.png")
czech = Country.create!(name: "Czech Republic", flag_url: "#{amazon_path}heart_flags/czech_republic.png")
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
israel = Country.create!(name: "Israel", flag_url: "#{amazon_path}heart_flags/israel.png")
italy = Country.create!(name: "Italy", flag_url: "#{amazon_path}heart_flags/italy.png", big_five: true)
latvia = Country.create!(name: "Latvia", flag_url: "#{amazon_path}heart_flags/latvia.png")
lithuania = Country.create!(name: "Lithuania", flag_url: "#{amazon_path}heart_flags/lithuania.png")
macedonia = Country.create!(name: "Macedonia", flag_url: "#{amazon_path}heart_flags/macedonia.png")
malta = Country.create!(name: "Malta", flag_url: "#{amazon_path}heart_flags/malta.png")
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

twentysixteen = Contest.new
twentysixteen.year = 2016
twentysixteen.location = "Stockholm, Sweden"
twentysixteen.host_country = sweden
twentysixteen.save!

jamala = twentysixteen.entries.create!(
  artist: "Jamala",
  song_title: "1944",
  final_ranking: 1,
  final_score: 534,
  finalist: true,
  country: ukraine,
  language: "English/Crimean/Tartar",
  video_url: "VCG2rw4ZXTY"
)

twentysixteen.winning_entry = jamala
twentysixteen.save!

twentysixteen.entries.create!(
  artist: "Dami Im",
  song_title: "Sound of Silence",
  final_ranking: 2,
  final_score: 511,
  finalist: true,
  country: australia,
  language: "English",
  video_url: "2EG_Jtw4OyU"
)

twentysixteen.entries.create!(
  artist: "Sergey Lazarev",
  song_title: "You Are The Only One",
  final_ranking: 3,
  final_score: 491,
  finalist: true,
  country: russia,
  language: "English",
  video_url: "gHgxi57Um0w"
)

twentysixteen.entries.create!(
  artist: "Poli Genova",
  song_title: "If Love Was a Crime",
  final_ranking: 4,
  final_score: 307,
  finalist: true,
  country: bulgaria,
  language: "English/Bulgarian",
  video_url: "yKsNfccUTuk"
)

twentysixteen.entries.create!(
  artist: "Frans",
  song_title: "If I Were Sorry",
  final_ranking: 5,
  final_score: 261,
  finalist: true,
  country: sweden,
  language: "English",
  video_url: "h8D7KNFtTlE"
)

twentysixteen.entries.create!(
  artist: "Amir",
  song_title: "J'ai cherché",
  final_ranking: 6,
  final_score: 257,
  finalist: true,
  country: france,
  language: "French",
  video_url: "boYQovCybYQ"
)

twentysixteen.entries.create!(
  artist: "Iveta Mukuchyan",
  song_title: "LoveWave",
  final_ranking: 7,
  final_score: 249,
  finalist: true,
  country: armenia,
  language: "English",
  video_url: "l7m3wOGhEvE"
)

twentysixteen.entries.create!(
  artist: "Michał Szpak",
  song_title: "Color of Your Life",
  final_ranking: 8,
  final_score: 229,
  finalist: true,
  country: poland,
  language: "English",
  video_url: "Sjup9PJ25LM"
)

twentysixteen.entries.create!(
  artist: "Donny Montell",
  song_title: "I've Been Waiting For This",
  final_ranking: 9,
  final_score: 200,
  finalist: true,
  country: lithuania,
  language: "English",
  video_url: "7cAIsbUczSI"
)

twentysixteen.entries.create!(
  artist: "Laura Tesoro",
  song_title: "What's The Pressure",
  final_ranking: 10,
  final_score: 181,
  finalist: true,
  country: belgium,
  language: "English",
  video_url: "iP3USrYpr5w"
)

twentysixteen.entries.create!(
  artist: "Douwe Bob",
  song_title: "Slow Down",
  final_ranking: 11,
  final_score: 153,
  finalist: true,
  country: netherlands,
  language: "English",
  video_url: "vytgHD2pqyk"
)

twentysixteen.entries.create!(
  artist: "Ira Losco",
  song_title: "Walk On Water",
  final_ranking: 12,
  final_score: 153,
  finalist: true,
  country: malta,
  language: "English",
  video_url: "9J7O5BGqPDk"
)

twentysixteen.entries.create!(
  artist: "ZOË",
  song_title: "Loin d'ici",
  final_ranking: 13,
  final_score: 151,
  finalist: true,
  country: austria,
  language: "French",
  video_url: "ZaPGwvAis3U"
)

twentysixteen.entries.create!(
  artist: "Hovi Star",
  song_title: "Made of Stars",
  final_ranking: 14,
  final_score: 135,
  finalist: true,
  country: israel,
  language: "English",
  video_url: "SpWKfcjXcp0"
)

twentysixteen.entries.create!(
  artist: "Justs",
  song_title: "Heartbeart",
  final_ranking: 15,
  final_score: 132,
  finalist: true,
  country: latvia,
  language: "English",
  video_url: "NVcKNzmvfxI"
)

twentysixteen.entries.create!(
  artist: "Francesca Michielin",
  song_title: "No Degree of Separation",
  final_ranking: 16,
  final_score: 124,
  finalist: true,
  country: italy,
  language: "Italian/English",
  video_url: "WySSLip5uzc"
)

twentysixteen.entries.create!(
  artist: "Samra",
  song_title: "Miracle",
  final_ranking: 17,
  final_score: 117,
  finalist: true,
  country: azerbaijan,
  language: "English",
  video_url: "Dix6XJ_Uo-w"
)

twentysixteen.entries.create!(
  artist: "ZAA Sanja Vučić",
  song_title: "Goodbye (Shelter)",
  final_ranking: 18,
  final_score: 115,
  finalist: true,
  country: serbia,
  language: "English",
  video_url: "mqh-XVcjmHc"
)

twentysixteen.entries.create!(
  artist: "Freddie",
  song_title: "Pioneer",
  final_ranking: 19,
  final_score: 108,
  finalist: true,
  country: hungary,
  language: "English",
  video_url: "NU8wso6fngM"
)

twentysixteen.entries.create!(
  artist: "Nika Kocharov and Young Georgian Lolitaz",
  song_title: "Midnight Gold",
  final_ranking: 20,
  final_score: 104,
  finalist: true,
  country: georgia,
  language: "English",
  video_url: "y5VynlW6Xeo"
)

twentysixteen.entries.create!(
  artist: "Minus One",
  song_title: "Alter Ego",
  final_ranking: 21,
  final_score: 96,
  finalist: true,
  country: cyprus,
  language: "English",
  video_url: "k8LcNrqiIFE"
)

twentysixteen.entries.create!(
  artist: "Barei",
  song_title: "Say Yay!",
  final_ranking: 22,
  final_score: 77,
  finalist: true,
  country: spain,
  language: "English",
  video_url: "k0I37W3RN_U"
)

twentysixteen.entries.create!(
  artist: "Nina Kraljić",
  song_title: "Lighthouse",
  final_ranking: 23,
  final_score: 73,
  finalist: true,
  country: croatia,
  language: "English",
  video_url: "yBrADG8lWFY"
)

twentysixteen.entries.create!(
  artist: "Joe and Jake",
  song_title: "You're Not Alone",
  final_ranking: 24,
  final_score: 62,
  finalist: true,
  country: uk,
  language: "English",
  video_url: "C5VvsLEd1TI"
)

twentysixteen.entries.create!(
  artist: "Gabriela Gunčíková",
  song_title: "I Stand",
  final_ranking: 25,
  final_score: 41,
  finalist: true,
  country: czech,
  language: "English",
  video_url: "0L2imZRo6NY"
)

twentysixteen.entries.create!(
  artist: "Jamie-Lee",
  song_title: "Ghost",
  final_ranking: 26,
  final_score: 11,
  finalist: true,
  country: germany,
  language: "English",
  video_url: "f-Z7pKopP9s"
)

twentyeighteen = Contest.new
twentyeighteen.year = 2018
twentyeighteen.location = "Lisbon, Portugal"
twentyeighteen.host_country = portugal
twentyeighteen.save!

twentyeighteen.entries.create!(
  artist: "Christabelle",
  song_title: "Taboo",
  country: malta,
  language: "English",
  video_url: "oyrC8jJ8eb8"
)

twentyeighteen.entries.create!(
  artist: "Saara Alto",
  song_title: "Monsters",
  country: finland,
  language: "English",
  video_url: "eEeIeQ-j2zk"
)

twentyeighteen.entries.create!(
  artist: "Gromee feat. Lukas Meijer",
  song_title: "Light Me Up",
  country: poland,
  language: "English",
  video_url: "yfUJ2eDm6ng"
)

twentyeighteen.entries.create!(
  artist: "Sennek",
  song_title: "A Matter Of Time",
  country: belgium,
  language: "English",
  video_url: "6DGf9TMehi0"
)

twentyeighteen.entries.create!(
  artist: "Ari Ólafsson",
  song_title: "Our Choice",
  country: iceland,
  language: "English",
  video_url: "nloweviD_90"
)

twentyeighteen.entries.create!(
  artist: "Franka",
  song_title: "Crazy",
  country: croatia,
  language: "English",
  video_url: "19Yo86KCd0w"
)

twentyeighteen.entries.create!(
  artist: "SuRie",
  song_title: "Storm",
  country: uk,
  finalist: true,
  language: "English",
  video_url: "K--kIdOpbJM"
)

twentyeighteen.entries.create!(
  artist: "Waylon",
  song_title: "Outlaw In 'Em",
  country: netherlands,
  language: "English",
  video_url: "kLL9IlQ_7OA"
)

twentyeighteen.entries.create!(
  artist: "Cláudia Pascoal",
  song_title: "O Jardim",
  country: portugal,
  language: "Portuguese",
  video_url: "kaVp4El9p3s"
)

twentyeighteen.entries.create!(
  artist: "Jessica Mauboy",
  song_title: "We Got Love",
  country: australia,
  language: "English",
  video_url: "J4XZxbrvepw"
)

twentyeighteen.entries.create!(
  artist: "MELOVIN",
  song_title: "Under The Ladder",
  country: ukraine,
  language: "English",
  video_url: "E1yoAtjhkzQ"
)

twentyeighteen.entries.create!(
  artist: "Cesár Sampson",
  song_title: "Nobody But You",
  country: austria,
  language: "English",
  video_url: "I8MyztgOTv8"
)

twentyeighteen.entries.create!(
  artist: "ALEKSEEV",
  song_title: "FOREVER",
  country: belarus,
  language: "English",
  video_url: "YU2My4BPX34"
)

twentyeighteen.entries.create!(
  artist: "Yianna Terzi",
  song_title: "Oneiro Mou",
  country: greece,
  language: "Greek",
  video_url: "z6hvV9-Gi_w"
)

twentyeighteen.entries.create!(
  artist: "AWS",
  song_title: "Viszlát Nyár",
  country: hungary,
  language: "Hungarian",
  video_url: "6unRU5ZHbqY"
)

twentyeighteen.entries.create!(
  artist: "The Humans",
  song_title: "Goodbye",
  country: romania,
  language: "English",
  video_url: "nK7ggCjA98g"
)

twentyeighteen.entries.create!(
  artist: "Elina Nechayeva",
  song_title: "La Forza",
  country: estonia,
  language: "Italian",
  video_url: "76KOUIfDry8"
)

twentyeighteen.entries.create!(
  artist: "Ermal Meta & Fabrizio Moro",
  song_title: "Non Mi Avete Fatto Niente",
  country: italy,
  finalist: true,
  language: "Italian",
  video_url: "zguJGdoPPnw"
)

twentyeighteen.entries.create!(
  artist: "DoReDos",
  song_title: "My Lucky Day",
  country: moldova,
  language: "English",
  video_url: "Kg3ecHrFM_4"
)

twentyeighteen.entries.create!(
  artist: "Michael Schulte",
  song_title: "You Let Me Walk Alone",
  country: germany,
  language: "English",
  video_url: "o_xTETHwIQg"
)

twentyeighteen.entries.create!(
  artist: "Sanja Ilić & Balkanika",
  song_title: "Nova Deca",
  country: serbia,
  language: "Serbian",
  video_url: "WkOFnIjGrkw"
)

twentyeighteen.entries.create!(
  artist: "Rasmussen",
  song_title: "Higher Ground",
  country: denmark,
  language: "English",
  video_url: "XeraDSzu0nw"
)

twentyeighteen.entries.create!(
  artist: "Zibbz",
  song_title: "Stones",
  country: switzerland,
  language: "English",
  video_url: "jXOlPGnkZFY"
)

twentyeighteen.entries.create!(
  artist: "Alfred and Amaia",
  song_title: "Tu Canción",
  country: spain,
  finalist: true,
  language: "Spanish",
  video_url: "nO4mDiJRH6Q"
)

twentyeighteen.entries.create!(
  artist: "Mikolas Josef",
  song_title: "Lie To Me",
  country: czech,
  language: "English",
  video_url: "k6_oxE2MxZE"
)

twentyeighteen.entries.create!(
  artist: "Madame Monsieur",
  song_title: "Mercy",
  country: france,
  language: "French",
  video_url: "L7dFXOyvWVE"
)

twentyeighteen.entries.create!(
  artist: "Lea Sirk",
  song_title: "Hvala, ne",
  country: slovenia,
  language: "Slovenian",
  video_url: "kiysnSG6a3I"
)

twentyeighteen.entries.create!(
  artist: "Laura Rizzotto",
  song_title: "Funny Girl",
  country: latvia,
  language: "English",
  video_url: "uBlZsGxeXk4"
)

twentyeighteen.entries.create!(
  artist: "Julia Samoylova",
  song_title: "I Won't Break",
  country: russia,
  language: "English",
  video_url: "bgBwbr_fUxA"
)

twentyeighteen.entries.create!(
  artist: "Vanja Radovanovic",
  song_title: "Inje",
  country: montenegro,
  language: "Montenegrin",
  video_url: "qxJoxbo9lCQ"
)

twentyeighteen.entries.create!(
  artist: "Netta",
  song_title: "TOY",
  country: israel,
  language: "English",
  video_url: "CziHrYYSyPc"
)

twentyeighteen.entries.create!(
  artist: "Eye Cue",
  song_title: "Lost And Found",
  country: macedonia,
  language: "English",
  video_url: "hJ8vStigz7k"
)

twentyeighteen.entries.create!(
  artist: "Alexander Rybak",
  song_title: "That's How You Write A Song",
  country: norway,
  language: "English",
  video_url: "oicLsTZRp28"
)

twentyeighteen.entries.create!(
  artist: "Benjamin Ingrosso",
  song_title: "Dance You Off",
  country: sweden,
  language: "English",
  video_url: "U2UmYBkszOA"
)

twentyeighteen.entries.create!(
  artist: "Jessika (feat. Jenifer Brening)",
  song_title: "Who We Are",
  country: san_marino,
  language: "English",
  video_url: "ZNflc1Zcw2A"
)

twentyeighteen.entries.create!(
  artist: "Ryan O'Shaughnessy",
  song_title: "Together",
  country: ireland,
  language: "English",
  video_url: "XAEjQXzW4Uc"
)
