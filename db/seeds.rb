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
genre1 = Genre.create (
  name: "Rap"
)
genre1 = Genre.create (
  name: "clasical"
)
genre1 = Genre.create (
  name: "Reggea"
)
genre1 = Genre.create (
  name: "Pop"
)

ArtistAlbum1 = ArtistAlbum.create(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)