# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
ArtistAlbum.destroy_all
Genre.destroy_all

puts "creating artists"

Artist1 = Artist.create! (
  username: "Jackson",
  email: "artist@artist.com"
  password: 123123,
)

Artist2 = Artist.create! (
  username: Faker::Music.band,
  email: Faker::Internet.email
  password: 123123,
)

Artist3 = Artist.create! (
  username: Faker::Music.band,
  email: Faker::Internet.email
  password: 123123,
)

Artist4 = Artist.create! (
  username: Faker::Music.band,
  email: "Faker::Internet.email",
  password: 123123,
)

puts "creating users"

User1 = User.create! (
  username: Faker::Name.first_name,
  email: "Faker::Internet.email",
  password: 123123,
)

User2 = User.create! (
  username: Faker::Name.first_name,
  email: "Faker::Internet.email",
  password: 123123,
)

User3 = User.create! (
  username: Faker::Name.first_name,
  email: "Faker::Internet.email",
  password: 123123,
)

User4 = User.create! (
  username: Faker::Name.first_name,
  email: "Faker::Internet.email",
  password: 123123,
)

puts "creating genres"

genre1 = Genre.create (
  name: "Rap"
)
genre2 = Genre.create (
  name: "Classic"
)
genre3 = Genre.create (
  name: "Reggae"
)
genre4 = Genre.create (
  name: "Pop"
)
genre5 = Genre.create (
  name: "Pop"
)

puts "creating albums with photos"

ArtistAlbum1 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)

ArtistAlbum2 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)

ArtistAlbum3 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)

ArtistAlbum4 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)

ArtistAlbum5 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)

