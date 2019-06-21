# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# r


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

artists = [Artist1, Artist2, Artist3, Artist4]


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

users = [User1, User2, User3, User4]

puts "creating genres"

Genre1 = Genre.create!(
  name: "Rap"
)
Genre2 = Genre.create!(
  name: "Classic"
)
Genre3 = Genre.create!(
  name: "Reggae"
)
Genre4 = Genre.create!(
  name: "Pop"
)
Genre5 = Genre.create!(
  name: "House"
)

genres = [Genre1, Genre2, Genre3, Genre4]

puts "creating albums with photos"

ArtistAlbum1 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)

AlbumPhoto.create!(
  artist_album: ArtistAlbum1,
  data:'https://geo-media.beatport.com/image/bbff4662-7a47-4740-b366-d95162064ce3.jpg'
)

ArtistAlbum2 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum2,
  data:'https://geo-media.beatport.com/image/85813b9f-1d13-4083-95e2-5128ec17f4e9.jpg'
)

ArtistAlbum3 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum3,
  data:'https://f4.bcbits.com/img/a0756037320_10.jpg'
)


ArtistAlbum4 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum4,
  data:'https://img.discogs.com/4TPZGd_rFo1hTonUhpqydN76SXY=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-5713398-1400653913-1213.jpeg.jpg'
)

ArtistAlbum5 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum5,
  data:'https://picsum.photos/500'
)

ArtistAlbum6 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum6,
  data:'https://picsum.photos/500'
)


ArtistAlbum7 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum7,
  data:'https://picsum.photos/500'
)


ArtistAlbum8 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum8,
  data:'https://picsum.photos/500'
)


ArtistAlbum9 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum9,
  data:'https://picsum.photos/500'
)


ArtistAlbum10 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum10,
  data:'https://picsum.photos/500'
)


ArtistAlbum11 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum11,
  data:'https://picsum.photos/500'
)


ArtistAlbum12 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum12,
  data:'https://picsum.photos/500'
)


ArtistAlbum13 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum13,
  data:'https://picsum.photos/500'
)

ArtistAlbum14 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum14,
  data:'https://picsum.photos/500'
)


ArtistAlbum15 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum15,
  data:'https://picsum.photos/500'
)


ArtistAlbum16 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum16,
  data:'https://picsum.photos/500'
)


ArtistAlbum17 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum17,
  data:'https://picsum.photos/500'
)


ArtistAlbum18 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum18,
  data:'https://picsum.photos/500'
)


ArtistAlbum19 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum19,
  data:'https://picsum.photos/500'
)


ArtistAlbum20 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum20,
  data:'https://picsum.photos/500'
)


ArtistAlbum21 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum21,
  data:'https://picsum.photos/500'
)


ArtistAlbum22 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum22,
  data:'https://picsum.photos/500'
)


ArtistAlbum23 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum23,
  data:'https://picsum.photos/500'
)


ArtistAlbum24 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum24,
  data:'https://picsum.photos/500'
)


ArtistAlbum25 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum25,
  data:'https://picsum.photos/500'
)


ArtistAlbum26 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum25,
  data:'https://picsum.photos/500'
)


ArtistAlbum27 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum27,
  data:'https://picsum.photos/500'
)


ArtistAlbum28 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum28,
  data:'https://picsum.photos/500'
)

ArtistAlbum29 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum29,
  data:'https://picsum.photos/500'
)

ArtistAlbum30 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample,
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum30,
  data:'https://picsum.photos/500'
)


