# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
ArtistAlbum.destroy_all
AlbumPhoto.destroy_all
Genre.destroy_all
User.destroy_all


puts "creating artists"

Artist1 = Artist.create!(
  username: "Jackson",
  email: "artist@artist.com",
  password: 123123,
)

Artist2 = Artist.create!(
  username: Faker::Music.band,
  email: Faker::Internet.email,
  password: 123123,
)

Artist3 = Artist.create!(
  username: Faker::Music.band,
  email: Faker::Internet.email,
  password: 123123,
)

Artist4 = Artist.create!(
  username: Faker::Music.band,
  email: Faker::Internet.email,
  password: 123123,
)

puts "creating users"

User1 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)

User2 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)

User3 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)

User4 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)

puts "creating genres"

genre1 = Genre.create!(
  name: "Rap"
)
genre2 = Genre.create!(
  name: "Classic"
)
genre3 = Genre.create!(
  name: "Reggae"
)
genre4 = Genre.create!(
  name: "Pop"
)
genre5 = Genre.create!(
  name: "House"
)

puts "creating albums with photos"

ArtistAlbum1 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum1,
  remote_data_url:'https://geo-media.beatport.com/image/bbff4662-7a47-4740-b366-d95162064ce3.jpg'
)


ArtistAlbum2 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum2,
  remote_data_url:'https://geo-media.beatport.com/image/85813b9f-1d13-4083-95e2-5128ec17f4e9.jpg'
)

ArtistAlbum3 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum3,
  remote_data_url:'https://f4.bcbits.com/img/a0756037320_10.jpg'
)


ArtistAlbum4 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum4,
  remote_data_url:'https://img.discogs.com/4TPZGd_rFo1hTonUhpqydN76SXY=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-5713398-1400653913-1213.jpeg.jpg'
)


ArtistAlbum5 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist_id: rand(1...5),
  genre_id: rand(1..5),
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum5,
  remote_data_url:'https://geo-media.beatport.com/image/3a2529d9-81b3-4a59-8f87-abda62fc5574.jpg'
)

