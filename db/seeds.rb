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


puts "creating users with userphoto"

User1 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
UserPhoto.create!(
  user: User1,
  remote_data_url:'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
)

User2 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
UserPhoto.create!(
  user: User2,
  remote_data_url:'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
)

User3 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
UserPhoto.create!(
  user: User3,
  remote_data_url:'https://images.unsplash.com/photo-1541271696563-3be2f555fc4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
)

User4 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
UserPhoto.create!(
  user: User3,
  remote_data_url:'https://images.unsplash.com/photo-1542624937-8d1e9f53c1b9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80'
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
  remote_data_url:'https://geo-media.beatport.com/image/bbff4662-7a47-4740-b366-d95162064ce3.jpg'
)

ArtistAlbum2 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum2,
  remote_data_url:'https://geo-media.beatport.com/image/85813b9f-1d13-4083-95e2-5128ec17f4e9.jpg'
)

ArtistAlbum3 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum3,
  remote_data_url:'https://f4.bcbits.com/img/a0756037320_10.jpg'
)


ArtistAlbum4 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum4,
  remote_data_url:'https://img.discogs.com/4TPZGd_rFo1hTonUhpqydN76SXY=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-5713398-1400653913-1213.jpeg.jpg'
)

ArtistAlbum5 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum5,
  remote_data_url:'https://picsum.photos/500'
)

ArtistAlbum6 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum6,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum7 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum7,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum8 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum8,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum9 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum9,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum10 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum10,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum11 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum11,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum12 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum12,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum13 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum13,
  remote_data_url:'https://picsum.photos/500'
)

ArtistAlbum14 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum14,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum15 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum15,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum16 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum16,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum17 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum17,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum18 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum18,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum19 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum19,
  remote_data_url:'https://picsum.photos/500'
)


ArtistAlbum20 = ArtistAlbum.create!(
  name: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
AlbumPhoto.create!(
  artist_album: ArtistAlbum20,
  remote_data_url:'https://picsum.photos/500'
)

artist_albums = [ArtistAlbum1, ArtistAlbum2, ArtistAlbum3, ArtistAlbum4, ArtistAlbum5, 
  ArtistAlbum6, ArtistAlbum7, ArtistAlbum8, ArtistAlbum9, ArtistAlbum10, ArtistAlbum11,
  ArtistAlbum12, ArtistAlbum13, ArtistAlbum14, ArtistAlbum15, ArtistAlbum16, ArtistAlbum17, 
  ArtistAlbum18, ArtistAlbum19, ArtistAlbum20]

puts "creating Songs"

ArtistSong1 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong2 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong3 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong4 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong5 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong6 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong7 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong8 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong9 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong10 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong11 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong12 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong13 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong14 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong15 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong16 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong17 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong18 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong19 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong20 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong21 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong22 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong23 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong24 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong25 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong26 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong27 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong28 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong29 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong30 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong31 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong32 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong33 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong34 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong35 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong36 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong37 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong38 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong39 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong40 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong41 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong42 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong43 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong44 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong45 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong46 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong47 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong48 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong49 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong50 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong51 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong52 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong53 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong54 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)


ArtistSong55 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong56 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong57 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong58 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong59 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong60 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong61 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong62 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

ArtistSong63 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong64 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong65 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong66 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong67 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong68 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong69 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)
ArtistSong70 = ArtistSong.create!(
  name: Faker::Company.name,
  artist: artists.sample,
  artist_album: artist_albums.sample,
  genre: genres.sample,
)

artist_songs = [
  ArtistSong1, ArtistSong2, ArtistSong3, ArtistSong4, ArtistSong5, ArtistSong6, ArtistSong, ArtistSong8, ArtistSong9, ArtistSong10,
  ArtistSong11, ArtistSong12, ArtistSong13, ArtistSong14, ArtistSong15, ArtistSong16, ArtistSong17, ArtistSong18, ArtistSong19, ArtistSong20,
  ArtistSong21, ArtistSong22, ArtistSong23, ArtistSong24, ArtistSong25, ArtistSong26, ArtistSong27, ArtistSong28, ArtistSong29, ArtistSong30,
  ArtistSong31, ArtistSong32, ArtistSong33, ArtistSong34, ArtistSong35, ArtistSong36, ArtistSong37, ArtistSong38, ArtistSong39, ArtistSong40,
  ArtistSong41, ArtistSong42, ArtistSong43, ArtistSong44, ArtistSong45, ArtistSong46, ArtistSong47, ArtistSong48, ArtistSong49, ArtistSong50,
  ArtistSong51, ArtistSong52, ArtistSong53, ArtistSong54, ArtistSong55, ArtistSong56, ArtistSong57, ArtistSong58, ArtistSong59, ArtistSong60,
  ArtistSong61, ArtistSong62, ArtistSong63, ArtistSong64, ArtistSong65, ArtistSong66, ArtistSong67, ArtistSong68, ArtistSong69, ArtistSong70,
]

puts "creating Playlists"

Playlist1 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist2 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist3 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist4 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist5 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist6 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist7 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist8 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist9 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

Playlist10 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)

playlists = [Playlist1, Playlist2, Playlist3, Playlist4, Playlist5, Playlist6, Playlist7, Playlist8, Playlist9, Playlist10]


playlists.each do |playlist|
  PlaylistPhoto.create!(
    playlist: playlist,
    remote_data_url: 'https://picsum.photos/500'
  )
end