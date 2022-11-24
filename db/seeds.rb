# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Artwork.destroy_all
User.destroy_all
user = User.create(first_name: "Tom", last_name: "Selv", email: "tomselv@gmail.com", password: "123456", password_confirmation: "123456")

artwork1 = Artwork.create(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", price: "EUR 75.00", user: user)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg")
artwork1.photo.attach(io: file, filename: "monalisa.jpg", content_type: "image/jpg")

artwork2 = Artwork.create(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", price: "EUR 175.00", user_id: user.id)
file = URI.open("https://www.edvardmunch.org/images/paintings/the-scream.jpg")
artwork2.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork3 = Artwork.create!(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", price: "EUR 200.00", user_id: user.id)
file = URI.open("https://sothebys-com.brightspotcdn.com/dims4/default/ec8b1ef/2147483647/strip/true/crop/856x519+0+0/resize/684x415!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot-migration.s3.amazonaws.com%2F35%2Fb2%2Fe2%2F501fe6b5b1b5eba887128a7059012dc0edc69fa94c153b17f49a74b8ba%2Fprints-andy-warhol-campbells-soup.JPG")
artwork3.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork4 = Artwork.create!(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", price: "EUR 345.00", user_id: user.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXsD6mdsepTDuVlwMvoJiU_NVcO446ztAuKx3ZMCZYu6-wyMNGBt_YYnWGLEPnNRqPTn4&usqp=CAU")
artwork4.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork5 = Artwork.create!(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", price: "EUR 150.00", user_id: user.id)
file = URI.open("https://www.jackson-pollock.org/images/paintings/number-1.jpg")
artwork5.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork6 = Artwork.create!(name: "Sunflowers", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Sunflowers in a vase", location: "London", price: "EUR 700.00", user_id: user.id)
file = URI.open("https://iiif.micr.io/TZCqF/full/1280,/0/default.jpg")
artwork6.photo.attach(io: file, filename: "sunflowers.jpg", content_type: "image/jpg")

artwork7 = Artwork.create!(name: "Number 5", artist: "Jackson Pollock", category: "Abstract", description: "More squiggly lines.", location: "New York", price: "EUR 240", user_id: user.id)
file = URI.open("https://www.jackson-pollock.org/images/paintings/number-5.jpg")
artwork7.photo.attach(io: file, filename: "number5.jpg", content_type: "image/jpg")

artwork8 = Artwork.create!(name: "Starry Night", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Night sky with swirls.", location: "New York", price: "EUR 650", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg")
artwork8.photo.attach(io: file, filename: "starrynight.jpg", content_type: "image/jpg")

artwork9 = Artwork.create!(name: "Van Gogh Self Portrati", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Painting of myself.", location: "Paris", price: "EUR 640", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg/1200px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg")
artwork9.photo.attach(io: file, filename: "selfportrait.jpg", content_type: "image/jpg")

artwork10 = Artwork.create!(name: "The Persistence of Memory", artist: "Salvador Dali", category: "Surrealism", description: "Melting clocks.", location: "New York", price: "EUR 980", user_id: user.id)
file = URI.open("https://mymodernmet.com/wp/wp-content/uploads/2017/06/the-persistence-of-memory-thumbnail.jpg")
artwork10.photo.attach(io: file, filename: "persistence.jpg", content_type: "image/jpg")

artwork11 = Artwork.create!(name: "Le Reve", artist: "Pablo Picasso", category: "Cubism", description: "Classic Picasso painting.", location: "New York", price: "EUR 1250", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Le-reve-1932.jpg/250px-Le-reve-1932.jpg")
artwork11.photo.attach(io: file, filename: "lereve.jpg", content_type: "image/jpg")

# artwork10 = Artwork.create!(name: "", artist: "", category: "", description: "", location: "", price: "", user_id: user.id)
# file = URI.open("")
# artwork10.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")

# Artwork.create!(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", photo: asset-url("monalisa.jpeg"), user_id: user.id)
# Artwork.create!(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", photo: asset-url("scream.jpeg"), user_id: user.id)
# Artwork.create!(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", photo: asset-url("soupcans.jpeg"), user_id: user.id)
# Artwork.create!(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", photo: asset-url("redyellowblue.jpeg"), user_id: user.id)
# Artwork.create!(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", photo: asset-url("numberone.jpeg"), user_id: user.id)
