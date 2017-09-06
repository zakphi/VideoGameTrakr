# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
xbox = Platform.create!(name: 'xbox')
playstation = Platform.create!(name: 'playstation')

VideoGame.create!([
  {title: 'Crackdown 3', platform: xbox, release_date: nil, description: 'super soldiers fighting crime'},
  {title: 'Forza Motorsport 7', platform: xbox, release_date: '3-October-2017', description: 'drive fast cars that most people can\'t afford'},
  {title: 'Sea of Thieves', platform: xbox, release_date: nil, description: 'play as a pirate and do pirate things'},
  {title: 'Halo 5', platform: xbox, release_date: '27-October-2015', description: 'super soldiers fighting aliens'},
  {title: 'Gears of War 4', platform: xbox, release_date: '11-October-2016', description: 'humans fighting aliens to survive'},
  {title: 'Bloodborne', platform: playstation, release_date: '24-March-2015', description: 'player creates character and kills things'},
  {title: 'God of War 4', platform: playstation, release_date: nil, description: 'old guy fighting Norse gods'},
  {title: 'Horizon: Zero Dawn', platform: playstation, release_date: '28-February-2017', description: 'hunter fighting mechanized creatures'},
  {title: 'The Last Guardian', platform: playstation, release_date: '6-December-2016', description: 'young boy and giant bird go on an adventure'},
  {title: 'Uncharted 4', platform: playstation, release_date: '10-May-2016', description: 'treasure hunter looking for more treasure'}
])