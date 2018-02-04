# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

amazon_path = "https://s3.amazonaws.com/douze-points-dev/"

Country.destroy_all

albania = Country.create!(name: "Albania", flag_url: "#{amazon_path}flags/Albania.jpg")
armenia = Country.create!(name: "Armenia", flag_url: "#{amazon_path}flags/Armenia.jpg")
australia = Country.create!(name: "Australia", flag_url: "#{amazon_path}flags/Australia.jpg")
azerbaijan = Country.create!(name: "Azerbaijan", flag_url: "#{amazon_path}flags/Azerbaijan.jpg")
belarus = Country.create!(name: "Belarus", flag_url: "#{amazon_path}flags/Belarus.jpg")
belgium = Country.create!(name: "Belgium", flag_url: "#{amazon_path}flags/Belgium.jpg")
croatia = Country.create!(name: "Croatia", flag_url: "#{amazon_path}flags/Croatia.jpg")
cyprus = Country.create!(name: "Cyprus", flag_url: "#{amazon_path}flags/Cyprus.jpg")
czech = Country.create!(name: "Czech Republic", flag_url: "#{amazon_path}flags/Czech_Republic.jpg")
denmark = Country.create!(name: "Denmark", flag_url: "#{amazon_path}flags/Denmark.jpg")
estonia = Country.create!(name: "Estonia", flag_url: "#{amazon_path}flags/Estonia.jpg")
finland = Country.create!(name: "Finland", flag_url: "#{amazon_path}flags/Finland.jpg")
france = Country.create!(name: "France", flag_url: "#{amazon_path}flags/France.jpg", big_five: true)
georgia = Country.create!(name: "Georgia", flag_url: "#{amazon_path}flags/Georgia.jpg")
germany = Country.create!(name: "Germany", flag_url: "#{amazon_path}flags/Germany.jpg", big_five: true)
greece = Country.create!(name: "Greece", flag_url: "#{amazon_path}flags/Greece.jpg")
hungary = Country.create!(name: "Hungary", flag_url: "#{amazon_path}flags/Hungary.jpg")
iceland = Country.create!(name: "Iceland", flag_url: "#{amazon_path}flags/Iceland.jpg")
ireland = Country.create!(name: "Ireland", flag_url: "#{amazon_path}flags/Ireland.jpg")
israel = Country.create!(name: "Israel", flag_url: "#{amazon_path}flags/Israel.jpg")
italy = Country.create!(name: "italy", flag_url: "#{amazon_path}flags/Italy.jpg", big_five: true)
latvia = Country.create!(name: "Latvia", flag_url: "#{amazon_path}flags/Latvia.jpg")
lithuania = Country.create!(name: "Lithuania", flag_url: "#{amazon_path}flags/Lithuania.jpg")
macedonia = Country.create!(name: "Macedonia", flag_url: "#{amazon_path}flags/Macedonia.jpg")
malta = Country.create!(name: "Malta", flag_url: "#{amazon_path}flags/Malta.jpg")
moldova = Country.create!(name: "Moldova", flag_url: "#{amazon_path}flags/Moldova.jpg")
montenegro = Country.create!(name: "Montenegro", flag_url: "#{amazon_path}flags/Montenegro.jpg")
netherlands = Country.create!(name: "Netherlands", flag_url: "#{amazon_path}flags/Netherlands.jpg")
norway = Country.create!(name: "Norway", flag_url: "#{amazon_path}flags/Norway.jpg")
poland = Country.create!(name: "Poland", flag_url: "#{amazon_path}flags/Poland.jpg")
portugal = Country.create!(name: "Portugal", flag_url: "#{amazon_path}flags/Portugal.jpg")
romania = Country.create!(name: "Romania", flag_url: "#{amazon_path}flags/Romania.jpg")
russia = Country.create!(name: "Russia", flag_url: "#{amazon_path}flags/Russia.jpg")
san_marino = Country.create!(name: "San Marino", flag_url: "#{amazon_path}flags/San_Marino.jpg")
serbia = Country.create!(name: "Serbia", flag_url: "#{amazon_path}flags/Serbia.jpg")
slovenia = Country.create!(name: "Slovenia", flag_url: "#{amazon_path}flags/Sovenia.jpg")
spain = Country.create!(name: "Spain", flag_url: "#{amazon_path}flags/Spain.jpg", big_five: true)
sweden = Country.create!(name: "Sweden", flag_url: "#{amazon_path}flags/Sweden.jpg")
switzerland = Country.create!(name: "Switzerland", flag_url: "#{amazon_path}flags/Switzerland.jpg")
ukraine = Country.create!(name: "Ukraine", flag_url: "#{amazon_path}flags/Ukraine.jpg")
uk = Country.create!(name: "United Kingdom", flag_url: "#{amazon_path}flags/United_Kingdom.jpg")
