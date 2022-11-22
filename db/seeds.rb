# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Artwork.destroy_all
user = User.create!(first_name: "Tom", last_name: "Selv", email: "tomselv@gmail.com", password: "123456", password_confirmation: "123456")

Artwork.create!(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", user_id: user.id)
Artwork.create!(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", user_id: user.id)
Artwork.create!(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", user_id: user.id)
Artwork.create!(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", user_id: user.id)
Artwork.create!(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", user_id: user.id)

# Artwork.create!(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", photo: asset-url("monalisa.jpeg"), user_id: user.id)
# Artwork.create!(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", photo: asset-url("scream.jpeg"), user_id: user.id)
# Artwork.create!(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", photo: asset-url("soupcans.jpeg"), user_id: user.id)
# Artwork.create!(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", photo: asset-url("redyellowblue.jpeg"), user_id: user.id)
# Artwork.create!(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", photo: asset-url("numberone.jpeg"), user_id: user.id)
