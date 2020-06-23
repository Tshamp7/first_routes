# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username:"AwesomeTom4276")
User.create!(username:"Amberbink666")
User.create!(username:"KailuvsR@ts")
User.create!(username:"PNWTrailerDad66")
User.create!(username:"ChocolateGrandma")
User.create!(username:"BlackCatJoey")

Artwork.create!(title:"engine sculpture", image_url: "stuff", artist_id: 1)
Artwork.create!(title:"pixel artwork of cats", image_url: "place", artist_id: 2)
Artwork.create!(title:"dead squirrel on canvas", image_url: "thing", artist_id: 3)
Artwork.create!(title:"Large Iron Table", image_url: "interweb", artist_id: 4)
Artwork.create!(title:"Plate of cookies in the sunlight", image_url: "coolest place", artist_id: 5)
Artwork.create!(title:"Baphomet finger painting", image_url: "hell!", artist_id: 6)

ArtworkShare.create!(artwork_id: 1, viewer_id: 6)
ArtworkShare.create!(artwork_id: 2, viewer_id: 5)
ArtworkShare.create!(artwork_id: 3, viewer_id: 4)
ArtworkShare.create!(artwork_id: 4, viewer_id: 3)
ArtworkShare.create!(artwork_id: 5, viewer_id: 2)
ArtworkShare.create!(artwork_id: 6, viewer_id: 1)



