# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
User.destroy_all
Genre.destroy_all
ArtistAlbum.destroy_all
ArtistSong.destroy_all
Playlist.destroy_all
UserSong.destroy_all

puts "creating artists"

Artist1 = Artist.create!(
  username: "Jackson",
  email: "artist@artist.com",
  password: 123123,
)


Artist2 = Artist.create!(
  username: "Little Dragon",
  email: Faker::Internet.email,
  password: 123123,
)
# ArtistPhoto.create!(
#   artist: Artist2,
#   remote_data_url:'https://d14wch1fpzoq5q.cloudfront.net/npl/2014/11/little-dragon-2.jpg'
# )

Artist3 = Artist.create!(
  username: Faker::Music.band,
  email: Faker::Internet.email,
  password: 123123,
)
# ArtistPhoto.create!(
#   artist: Artist3,
#   remote_data_url:'https://www.billboard.com/files/styles/article_main_image/public/media/fifth-harmony-bb3-2015-billboard-03-650.jpg'
# )

Artist4 = Artist.create!(
  username: Faker::Music.band,
  email: Faker::Internet.email,
  password: 123123,
)
# ArtistPhoto.create!(
#   artist: Artist4,
#   remote_data_url:'https://i.scdn.co/image/b5aae2067db80f694a980e596e7f49618c1206c9'
# )


artists = [Artist1, Artist2, Artist3, Artist4]



puts "creating users"

User1 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
10.times do 
  Post.create!(
    title: Faker::Superhero.name,
    user: User1,
    description:Faker::Lorem.paragraph
  )
end

# UserPhoto.create!(
#   user: User1,
#   remote_data_url:'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# )


User2 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
10.times do 
  Post.create!(
    title: Faker::Superhero.name,
    user: User2,
    description:Faker::Lorem.paragraph
  )
end
# UserPhoto.create!(
#   user: User2,
#   remote_data_url:'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
# )


User3 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
10.times do 
  Post.create!(
    title: Faker::Superhero.name,
    user: User3,
    description:Faker::Lorem.paragraph
  )
end
# UserPhoto.create!(
#   user: User3,
#   remote_data_url:'https://images.unsplash.com/photo-1541271696563-3be2f555fc4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# )

User4 = User.create!(
  username: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: 123123,
)
10.times do 
  Post.create!(
    title: Faker::Superhero.name,
    user: User4,
    description:Faker::Lorem.paragraph
  )
end
# UserPhoto.create!(
#   user: User4,
#   remote_data_url:'https://images.unsplash.com/photo-1542624937-8d1e9f53c1b9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80'
# )

users = [User1, User2, User3, User4]

puts "creating followers"

Follow.create!(
  followee_id: User1.id,
  follower_id: User2.id
)
Follow.create!(
  followee_id: User1.id,
  follower_id: User3.id
)
Follow.create!(
  followee_id: User1.id,
  follower_id: User4.id
)

Follow.create!(
  followee_id: User2.id,
  follower_id: User1.id
)
Follow.create!(
  followee_id: User2.id,
  follower_id: User3.id
)
Follow.create!(
  followee_id: User2.id,
  follower_id: User4.id
)


Follow.create!(
  followee_id: User3.id,
  follower_id: User1.id
)
Follow.create!(
  followee_id: User3.id,
  follower_id: User2.id
)
Follow.create!(
  followee_id: User3.id,
  follower_id: User4.id
)


Follow.create!(
  followee_id: User4.id,
  follower_id: User1.id
)
Follow.create!(
  followee_id: User4.id,
  follower_id: User2.id
)
Follow.create!(
  followee_id: User4.id,
  follower_id: User3.id
)


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

puts "creating albums"

ArtistAlbum1 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum1,
#   remote_data_url:'https://geo-media.beatport.com/image/bbff4662-7a47-4740-b366-d95162064ce3.jpg'
# )

ArtistAlbum2 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum2,
#   remote_data_url:'https://geo-media.beatport.com/image/85813b9f-1d13-4083-95e2-5128ec17f4e9.jpg'
# )

ArtistAlbum3 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum3,
#   remote_data_url:'https://f4.bcbits.com/img/a0756037320_10.jpg'
# )


ArtistAlbum4 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum4,
#   remote_data_url:'https://img.discogs.com/4TPZGd_rFo1hTonUhpqydN76SXY=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-5713398-1400653913-1213.jpeg.jpg'
# )

ArtistAlbum5 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum5,
#   remote_data_url:'https://geo-media.beatport.com/image/cfb54d50-1475-4ddc-bce3-d885d82d5b5b.jpg'
# )

ArtistAlbum6 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum6,
#   remote_data_url:'https://geo-media.beatport.com/image/8a112ede-a082-4683-9682-7c2f3b5fa5f8.jpg'
# )


ArtistAlbum7 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum7,
#   remote_data_url:'https://geo-media.beatport.com/image/fc6821d2-6207-4b93-aba1-d5b2f7e0daf3.jpg'
# )


ArtistAlbum8 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum8,
#   remote_data_url:'https://geo-media.beatport.com/image/f7718951-67c2-493a-8dcd-4aab54f17f9f.jpg'
# )


ArtistAlbum9 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum9,
#   remote_data_url:'https://geo-media.beatport.com/image/8a4f2655-2e76-4885-80ca-2ce82c596864.jpg'
# )


ArtistAlbum10 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum10,
#   remote_data_url:'https://geo-media.beatport.com/image/65db00f1-b0e5-4f4c-b831-588eae84b6a7.jpg'
# )


ArtistAlbum11 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum11,
#   remote_data_url:'https://geo-media.beatport.com/image/ef368915-ee57-4d64-ae22-26ddf82d48da.jpg'
# )


ArtistAlbum12 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum12,
#   remote_data_url:'https://geo-media.beatport.com/image/f097a89e-4ea4-4091-8418-4d69842375c8.jpg'
# )


ArtistAlbum13 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum13,
#   remote_data_url:'https://geo-media.beatport.com/image/e40b5758-c983-4865-af54-5bbea8e59517.jpg'
# )

ArtistAlbum14 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum14,
#   remote_data_url:'https://geo-media.beatport.com/image/12498422-6fca-4f7f-bc8a-afb2484213e9.jpg'
# )


ArtistAlbum15 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum15,
#   remote_data_url:'https://geo-media.beatport.com/image/d3767147-e154-4fe0-9154-5933e76fda5e.jpg'
# )


ArtistAlbum16 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum16,
#   remote_data_url:'https://geo-media.beatport.com/image/5377f097-307d-4a52-ace1-d29c5b9e4fb0.jpg'
# )


ArtistAlbum17 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum17,
#   remote_data_url:'https://geo-media.beatport.com/image/b0d5d019-0b72-4357-a3fc-aea9a28f7e96.jpg'
# )


ArtistAlbum18 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum18,
#   remote_data_url:'https://geo-media.beatport.com/image/72b5b011-56b1-4121-9bc5-4a36b910e8ed.jpg'
# )


ArtistAlbum19 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum19,
#   remote_data_url:'https://geo-media.beatport.com/image/cf554060-0f4c-44f1-9128-d60ec2be5a1e.jpg'
# )


ArtistAlbum20 = ArtistAlbum.create!(
  title: Faker::Music.album,
  artist: artists.sample,
  genre: genres.sample
)
# AlbumPhoto.create!(
#   artist_album: ArtistAlbum20,
#   remote_data_url:'https://geo-media.beatport.com/image/832c98c7-2095-4e8d-b4bb-83a037092cc4.jpg'
# )

artist_albums = [ArtistAlbum1, ArtistAlbum2, ArtistAlbum3, ArtistAlbum4, ArtistAlbum5, 
  ArtistAlbum6, ArtistAlbum7, ArtistAlbum8, ArtistAlbum9, ArtistAlbum10, ArtistAlbum11,
  ArtistAlbum12, ArtistAlbum13, ArtistAlbum14, ArtistAlbum15, ArtistAlbum16, ArtistAlbum17, 
  ArtistAlbum18, ArtistAlbum19, ArtistAlbum20]

puts "creating Playlists"

Playlist1 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample
)
# PlaylistPhoto.create!(
#   playlist: Playlist1,
#   remote_data_url:'https://images.unsplash.com/photo-1534742705189-6e8e7f0f249b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# )
Playlist2 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist2,
#   remote_data_url:'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
# )


Playlist3 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist3,
#   remote_data_url:'https://images.unsplash.com/photo-1496293455970-f8581aae0e3b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1402&q=80'
# )


Playlist4 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist4,
#   remote_data_url:'https://images.unsplash.com/photo-1421217336522-861978fdf33a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
# )


Playlist5 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist5,
#   remote_data_url:'https://images.unsplash.com/photo-1485777675307-6dd50e4485b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
# )


Playlist6 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist6,
#   remote_data_url:'https://images.unsplash.com/photo-1467916971207-e78d69dbe744?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
# )


Playlist7 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist7,
#   remote_data_url:'https://images.unsplash.com/photo-1465314519189-7e0d87f4442c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
# )


Playlist8 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist8,
#   remote_data_url:'https://images.unsplash.com/photo-1531786123587-e8873ed178af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
# )


Playlist9 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist9,
#   remote_data_url:'https://images.unsplash.com/photo-1533929702053-9986939ea193?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
# )


Playlist10 = Playlist.create!(
  name: Faker::ProgrammingLanguage.name,
  description: Faker::Lorem.paragraph,
  user: users.sample,
)
# PlaylistPhoto.create!(
#   playlist: Playlist10,
#   remote_data_url:'https://images.unsplash.com/photo-1487180144351-b8472da7d491?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80'
# )

list_of_playlists = [Playlist1, Playlist2, Playlist3, Playlist4, Playlist5, Playlist6, Playlist7, Playlist8, Playlist9, Playlist10]

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

puts "Creating UserSong"

UserSong1 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong2 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong3 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong4 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong5 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong6 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong7 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong8 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong9 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong10 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong11 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong12 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong13 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong14 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong15 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong16 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong17 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong18 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong19 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

UserSong20 = UserSong.create!(
  user: users.sample,
  artist_song: artist_songs.sample,
  playlist: list_of_playlists.sample
)

list_of_user_songs = [UserSong1, UserSong2, UserSong3, UserSong4, UserSong5, UserSong6, UserSong7, UserSong8, UserSong9, UserSong10, 
  UserSong11, UserSong12, UserSong13, UserSong14, UserSong15, UserSong16, UserSong17, UserSong18, UserSong19, UserSong20]
