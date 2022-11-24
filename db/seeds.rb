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

artwork1 = Artwork.create(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", price: "EUR 75", user: user)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg")
artwork1.photo.attach(io: file, filename: "monalisa.jpg", content_type: "image/jpg")

artwork2 = Artwork.create(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", price: "EUR 175", user_id: user.id)
file = URI.open("https://www.edvardmunch.org/images/paintings/the-scream.jpg")
artwork2.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork3 = Artwork.create(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", price: "EUR 200", user_id: user.id)
file = URI.open("https://sothebys-com.brightspotcdn.com/dims4/default/ec8b1ef/2147483647/strip/true/crop/856x519+0+0/resize/684x415!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot-migration.s3.amazonaws.com%2F35%2Fb2%2Fe2%2F501fe6b5b1b5eba887128a7059012dc0edc69fa94c153b17f49a74b8ba%2Fprints-andy-warhol-campbells-soup.JPG")
artwork3.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork4 = Artwork.create(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", price: "EUR 345", user_id: user.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXsD6mdsepTDuVlwMvoJiU_NVcO446ztAuKx3ZMCZYu6-wyMNGBt_YYnWGLEPnNRqPTn4&usqp=CAU")
artwork4.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork5 = Artwork.create(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", price: "EUR 150", user_id: user.id)
file = URI.open("https://www.jackson-pollock.org/images/paintings/number-1.jpg")
artwork5.photo.attach(io: file, filename: "scream.jpg", content_type: "image/jpg")

artwork6 = Artwork.create(name: "Sunflowers", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Sunflowers in a vase", location: "London", price: "EUR 700", user_id: user.id)
file = URI.open("https://iiif.micr.io/TZCqF/full/1280,/0/default.jpg")
artwork6.photo.attach(io: file, filename: "sunflowers.jpg", content_type: "image/jpg")

artwork7 = Artwork.create(name: "Number 5", artist: "Jackson Pollock", category: "Abstract", description: "More squiggly lines.", location: "New York", price: "EUR 240", user_id: user.id)
file = URI.open("https://www.jackson-pollock.org/images/paintings/number-5.jpg")
artwork7.photo.attach(io: file, filename: "number5.jpg", content_type: "image/jpg")

artwork8 = Artwork.create(name: "Starry Night", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Night sky with swirls.", location: "New York", price: "EUR 650", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg")
artwork8.photo.attach(io: file, filename: "starrynight.jpg", content_type: "image/jpg")

artwork9 = Artwork.create(name: "Van Gogh Self Portrati", artist: "Vincent van Gogh", category: "Post-Impressionism", description: "Painting of myself.", location: "Paris", price: "EUR 640", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg/1200px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg")
artwork9.photo.attach(io: file, filename: "selfportrait.jpg", content_type: "image/jpg")

artwork10 = Artwork.create(name: "The Persistence of Memory", artist: "Salvador Dali", category: "Surrealism", description: "Melting clocks.", location: "New York", price: "EUR 980", user_id: user.id)
file = URI.open("https://mymodernmet.com/wp/wp-content/uploads/2017/06/the-persistence-of-memory-thumbnail.jpg")
artwork10.photo.attach(io: file, filename: "persistence.jpg", content_type: "image/jpg")

artwork11 = Artwork.create(name: "Le Reve", artist: "Pablo Picasso", category: "Cubism", description: "Classic Picasso painting.", location: "New York", price: "EUR 1250", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Le-reve-1932.jpg/250px-Le-reve-1932.jpg")
artwork11.photo.attach(io: file, filename: "lereve.jpg", content_type: "image/jpg")

artwork12 = Artwork.create(name: "The Kiss", artist: "Gustav Klimt", category: "Modern", description: "Opulently gilded and extravagantly patterned, The Kiss, Gustav Klimt’s fin-de-siècle portrayal of intimacy, is a mix of Symbolism and Vienna Jugendstil, the Austrian variant of Art Nouveau.", location: "San Francisco", price: "EUR 2300", user_id: user.id)
file = URI.open("https://www.gustav-klimt.com/images/paintings/The-Kiss.jpg")
artwork12.photo.attach(io: file, filename: "thekiss.jpg", content_type: "image/jpg")

artwork13 = Artwork.create(name: "The Birth of Venus", artist: "Sandro Botticelli", category: "Renaissance", description: "Botticelli’s The Birth of Venus was the first full-length, non-religious nude since antiquity, and was made for Lorenzo de Medici.", location: "Paris", price: "EUR 320", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited.jpg/640px-Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited.jpg")
artwork13.photo.attach(io: file, filename: "venus.jpg", content_type: "image/jpg")

artwork14 = Artwork.create(name: "Arrangement in Grey and Black No. 1", artist: "James Abbott McNeill Whistler", category: "Grey", description: "Whistlers mother Anna is pictured as one of several elements locked into an arrangement of right angles.", location: "London", price: "GBP 560", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Whistlers_Mother_high_res.jpg/1200px-Whistlers_Mother_high_res.jpg")
artwork14.photo.attach(io: file, filename: "arrangement.jpg", content_type: "image/jpg")

artwork15 = Artwork.create(name: "The Arnolfini Portrait", artist: "Jan van Eyck", category: "Portrait", description: "A full-length double portrait, it reputedly portrays an Italian merchant and a woman who may or may not be his bride.", location: "Rome", price: "EUR 340", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/The_Arnolfini_portrait_%281434%29.jpg/1200px-The_Arnolfini_portrait_%281434%29.jpg")
artwork15.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")

artwork16 = Artwork.create(name: "Poker Game", artist: "Cassius Coolidge", category: "Modern", description: "Poker Game is part of a series of comic foregrounds he produced, life-sized paintings which depict dogs doing activities that humans would normally do.", location: "San Francisco", price: "USD 2100", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/download-4-1.jpg")
artwork16.photo.attach(io: file, filename: "pokergame.jpg", content_type: "image/jpg")

artwork17 = Artwork.create(name: "The Drowning Girl", artist: "Roy Lichtenstein", category: "Modern", description: "The Drowning Girl is one of Lichenstein’s most popular artworks, for the way he captures the melodrama so masterfully.", location: "Dallas", price: "USD 340", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/6530203451_43ef56b1a5_b.jpg")
artwork17.photo.attach(io: file, filename: "drowninggirl.jpg", content_type: "image/jpg")

artwork18 = Artwork.create(name: "Full Fathom Five", artist: "Jackson Pollock", category: "Modern", description: "Painted by dripping, pouring, splashing, or spraying the paint onto a canvas.", location: "Los Angeles", price: "USD 440", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/full-fathom-five.jpg")
artwork18.photo.attach(io: file, filename: "fullfathomfive.jpg", content_type: "image/jpg")

artwork19 = Artwork.create(name: "The Boating Party", artist: "Mary Cassatt", category: "Modern", description: "The Boating Party came along when the artist was finally having some success as an artist and has been called her most ambitious painting.", location: "Los Angeles", price: "USD 340", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/the_boating_party_1963.10.94-2048x1579.jpg")
artwork19.photo.attach(io: file, filename: "boatingparty.jpg", content_type: "image/jpg")

artwork20 = Artwork.create(name: "The Dream", artist: "Henry Rousseau ", category: "Modern", description: "This painting, The Dream, was Rousseau’s last completed work before his death and is filled with various animals and plants, as well as a reclining nude woman on a seat pointing towards a dark figure playing the flute.", location: "Paris", price: "EUR 560", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/Dream-canvas-Henri-Rousseau-Museum-of-Modern-1910.jpg")
artwork20.photo.attach(io: file, filename: "thedream.jpg", content_type: "image/jpg")

artwork21 = Artwork.create(name: "Composition VII", artist: "Wassily Kandinsky", category: "Modern", description: "The piece contains examples of Christian end-times, resurrection, spirituality, and the four horsemen of the apocalypse, as found in the bible book of Revelation.", location: "Moscow", price: "EUR 760", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/36-1536x1098.jpg")
artwork21.photo.attach(io: file, filename: "composition.jpg", content_type: "image/jpg")

artwork22 = Artwork.create(name: "NEw York City", artist: "Piet Mondrian", category: "Modern", description: "Lots of yellow lines, some not yellow.", location: "New York", price: "EUR 2100", user_id: user.id)
file = URI.open("https://www.piet-mondrian.org/images/paintings/new-york-city-1.jpg")
artwork22.photo.attach(io: file, filename: "newyorkcity.jpg", content_type: "image/jpg")

artwork23 = Artwork.create(name: "Flag", artist: "Jasper Johns", category: "Modern", description: "Flag, a painting using a variety of different media, was produced by the artist which made use of oil paint and collage on canvas before finally being mounted on a fabric and plywood backing.", location: "New York", price: "USD 1000", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/cri_000000467516-1536x1062.jpg")
artwork23.photo.attach(io: file, filename: "flag.jpg", content_type: "image/jpg")

artwork24 = Artwork.create(name: "Luncheon of the Boating Party", artist: "Auguste Renoir", category: "Modern", description: "This artwork, Luncheon of the Boating Party, is a perfect depiction of life in late 19th century France, depicting his future wife playing with a dog and his many friends in the painting.", location: "Paris", price: "EUR 500", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/Pierre-Auguste_Renoir_-_Luncheon_of_the_Boating_Party_-_Google_Art_Project-1536x1134.jpg")
artwork24.photo.attach(io: file, filename: "boatingparty.jpg", content_type: "image/jpg")

artwork25 = Artwork.create(name: "Disintegration of the Persistence of Memory", artist: "Salvador Dali", category: "Modern", description: "To create The Disintegration of the Persistence of Memory, Dali took one of his old artworks, The Persistence of Memory from over 20 years prior and deconstructed it. ", location: "Barcelona", price: "EUR 550", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/8029c23eb07c4f81101ce8c66daf2421-1536x1193.jpg")
artwork25.photo.attach(io: file, filename: "disintegration.jpg", content_type: "image/jpg")

artwork26 = Artwork.create(name: "The Love Embrace of the Universe", artist: "Frida Kahlo", category: "Modern", description: "The Love Embrace of the Universe depicts Kahlo and her husband being embraced by their country Mexico, by the Earth, and finally by the universe.", location: "Mexico City", price: "MXN 3400", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/the-love-embrace-of-the-universe-the-earth-mexico-myself-diego-and-senor-xolotl.jpg")
artwork26.photo.attach(io: file, filename: "loveembrace.jpg", content_type: "image/jpg")

artwork27 = Artwork.create(name: "Composition A", artist: "Piet Mondrian", category: "Modern", description: "Colourful boxes.", location: "Paris", price: "EUR 780", user_id: user.id)
file = URI.open("https://uploads3.wikiart.org/images/piet-mondrian/composition-a-1923.jpg!Large.jpg")
artwork27.photo.attach(io: file, filename: "compositiona.jpg", content_type: "image/jpg")

artwork28 = Artwork.create(name: "Number 14", artist: "Jackson Pollock", category: "Modern", description: "Lots of black swirly lines.", location: "Seattle", price: "USD 780", user_id: user.id)
file = URI.open("https://www.jackson-pollock.org/images/paintings/number-14-gray.jpg")
artwork28.photo.attach(io: file, filename: "number14.jpg", content_type: "image/jpg")

artwork29 = Artwork.create(name: "Joy of Life", artist: "Henri Matisse", category: "Modern", description: "Joy of Life is an example of one of Matisse’s best artworks at the prime of his career.", location: "Paris", price: "EUR 110", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/joy-of-life-1024x738.jpg")
artwork29.photo.attach(io: file, filename: "joyoflife.jpg", content_type: "image/jpg")

artwork30 = Artwork.create(name: "Guernica", artist: "Pablo Picasso", category: "Modern", description: "Guernica is a reaction to the bombing of the town during the Spanish Civil War by the German and Italian aerial bombing campaigns.", location: "Madrid", price: "EUR 660", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/05/Pablo-Picasso-Guernica-1937-Image-via-wikipediaorg.jpg")
artwork30.photo.attach(io: file, filename: "guernica.jpg", content_type: "image/jpg")

artwork31 = Artwork.create(name: "Nude Descending a Staircase No. 2", artist: "Marcel Duchamp", category: "Modern", description: "One of the most interesting aspects of this artwork is the way that the elements evoke the idea of motion.", location: "Marseille", price: "EUR 230", user_id: user.id)
file = URI.open("https://www.theartist.me/wp-content/uploads/2021/04/29d6693243453086da9d073eb118b4c972892051-621x1024.jpg")
artwork31.photo.attach(io: file, filename: "staircase.jpg", content_type: "image/jpg")

artwork32 = Artwork.create(name: "Number 9A", artist: "Jackson Pollock", category: "Modern", description: "Squiggly lines with some colour.", location: "Brighton", price: "GBP 440", user_id: user.id)
file = URI.open("https://live.staticflickr.com/5045/5378100733_4e58305b32_b.jpg")
artwork32.photo.attach(io: file, filename: "number9a.jpg", content_type: "image/jpg")

artwork33 = Artwork.create(name: "Streak 2", artist: "Bridget Riley", category: "Modern", description: "Streak 2 is a prime example of Rileys famous stripe paintings.", location: "Washington DC", price: "USD 890", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1400/MTkyNzk4MzMwOTkwODk2MzQ5/20-greatest-paintings-of-modern-art.webp")
artwork33.photo.attach(io: file, filename: "streak2.jpg", content_type: "image/jpg")

artwork34 = Artwork.create(name: "Untitled", artist: "Mariano Rodriguez", category: "Modern", description: "He often painted roosters and pretty—often nude—women, and in the aforementioned work—painted both in one glorious, vibrant composition!", location: "Havana", price: "EUR 560", user_id: user.id)
file = URI.open("https://i.pinimg.com/originals/c9/7d/0a/c97d0ad36cf80c241bfcc66770d45c59.jpg")
artwork34.photo.attach(io: file, filename: "untitled.jpg", content_type: "image/jpg")

artwork35 = Artwork.create(name: "Eclipse of the Sun", artist: "George Grosz", category: "Modern", description: "Caricatures of street life in Berlin", location: "Berlin", price: "EUR 980", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1124/MTg4MzIyMDgwMzczMDg5NDk5/20-greatest-paintings-of-modern-art.webp")
artwork35.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")

artwork36 = Artwork.create(name: "Broken and Restored Multiplication", artist: "Suzanne Duchamp-Crotti", category: "Modern", description: "Broken and Restored Multiplication shows the mechanical world, including the Eiffel Tower.", location: "Paris", price: "EUR 555", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_800/MTg5NzYwMTEyMTk2MzMxMTk2/20-greatest-paintings-of-modern-art.webp")
artwork36.photo.attach(io: file, filename: "broken.jpg", content_type: "image/jpg")

artwork37 = Artwork.create(name: "Paloma à la Guitare", artist: "Francoise Gilot", category: "Modern", description: "Paloma à la Guitare is a portrait of Aurélia, Gilot’s daughter, playing the guitar.", location: "Sevilla", price: "EUR 120", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_800/MTg5NzYwMTY2MTUxODU3Mzc4/20-greatest-paintings-of-modern-art.webp")
artwork37.photo.attach(io: file, filename: "paloma.jpg", content_type: "image/jpg")

artwork38 = Artwork.create(name: "Final Final", artist: "Edwin Forrest", category: "Modern", description: "Creates a rhythm with the shapes.", location: "San Francisco", price: "USD 230", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1400/MTg5NzYwMjAyNjU5MDc5Mzk0/20-greatest-paintings-of-modern-art.webp")
artwork38.photo.attach(io: file, filename: "final.jpg", content_type: "image/jpg")

artwork39 = Artwork.create(name: "Untitled", artist: "Shonto Begay", category: "Modern", description: "The Southwestern masterpiece depicts a magical landscape of sand, cacti, sagebrush, buttes, mesas and petroglyphs.", location: "Las Vegas", price: "USD 445", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_736/MTg4MzIyMTAzNDU4NTM5MDI3/20-greatest-paintings-of-modern-art.webp")
artwork39.photo.attach(io: file, filename: "untitledbegay.jpg", content_type: "image/jpg")

artwork40 = Artwork.create(name: "Kangaroo Paddock", artist: "Peter Benjamin Graham", category: "Modern", description: "Peter Benjamin Graham had a keen interest in Australian wildlife, particularly kangaroos, and also had a passion for Aboriginal art, religion and culture.", location: "Sydney", price: "AUD 650", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1024/MTg4MzIyMTMxMTA3MzkwOTk1/20-greatest-paintings-of-modern-art.webp")
artwork40.photo.attach(io: file, filename: "kangaroo.jpg", content_type: "image/jpg")

artwork41 = Artwork.create(name: "The Trench", artist: "Otto Dix", category: "Modern", description: "Shows slaughtered soldiers, their bodies in pieces that decompose in muddy trenches.", location: "Berlin", price: "EUR 780", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1024/MTg4MzIyMTg3MjEwNDAwOTg3/20-greatest-paintings-of-modern-art.webp")
artwork41.photo.attach(io: file, filename: "trench.jpg", content_type: "image/jpg")

artwork42 = Artwork.create(name: "Greenwich Village Cafeteria", artist: "Paul Cadmus", category: "Modern", description: "Caricatures of drunkenness, debauchery or homosexuality.", location: "New York", price: "USD 420", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_873/MTg3MDIxMjA1NjQ2MDkxMjc1/20-greatest-paintings-of-modern-art.webp")
artwork42.photo.attach(io: file, filename: "greenwich.jpg", content_type: "image/jpg")

artwork43 = Artwork.create(name: "Blue Madonna", artist: "Bob Thompson", category: "Modern", description: "Synthesize all of these art forms into a creative whole.", location: "Edinburgh", price: "GBP 200", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_600/MTg3MDIxMjI3NjU3Nzk4NjY3/20-greatest-paintings-of-modern-art.webp")
artwork43.photo.attach(io: file, filename: "bluemadonna.jpg", content_type: "image/jpg")

artwork44 = Artwork.create(name: "Timeblades", artist: "James Rosenquist", category: "Modern", description: "James Rosenquist was a billboard artist and sign painter until the 1960s, when he developed his own style of painting giant artworks.", location: "Boston", price: "USD 100", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1400/MTg1MjU3OTAxNzIyNDQ1NDU5/20-greatest-paintings-of-modern-art.webp")
artwork44.photo.attach(io: file, filename: "timeblades.jpg", content_type: "image/jpg")

artwork45 = Artwork.create(name: "Untitled", artist: "Cy Twombly", category: "Modern", description: "Comprised of what appears to be writing, calligraphy, graffiti or cryptographic scribbles.", location: "Chicago", price: "USD 330", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_880/MTg1MjU4MjU0NzE1MDcwMDYy/20-greatest-paintings-of-modern-art.webp")
artwork45.photo.attach(io: file, filename: "untitledtwombly.jpg", content_type: "image/jpg")

artwork46 = Artwork.create(name: "The City Rises", artist: "Umberto Boccioni", category: "Modern", description: "Considered Boccioni’s first work of Futurism.", location: "Milan", price: "EUR 860", user_id: user.id)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b4/The_City_Rises_by_Umberto_Boccioni_1910.jpg")
artwork46.photo.attach(io: file, filename: "cityrises.jpg", content_type: "image/jpg")

artwork47 = Artwork.create(name: "In-Appropriate #1", artist: "Frank Buffalo Hyde", category: "Modern", description: "Depicts a pretty white woman with blonde tresses, who tries to appear Native American—but isn’t fooling anybody!", location: "New Mexico", price: "USD 310", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_603/MTg0MTQyOTUzNDQ1MzM2OTYz/20-greatest-paintings-of-modern-art.webp")
artwork47.photo.attach(io: file, filename: "inappropriate.jpg", content_type: "image/jpg")

artwork48 = Artwork.create(name: "The Block", artist: "Romare Bearden", category: "Modern", description: "The Block, shows his interest in abstract art, particularly as shown in his social protest paintings, cartoons and collages.", location: "Charlotte", price: "USD 90", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1323/MTg0MTQzMzEyNjExOTc3MDkx/20-greatest-paintings-of-modern-art.webp")
artwork48.photo.attach(io: file, filename: "block.jpg", content_type: "image/jpg")

artwork49 = Artwork.create(name: "Half Dome at Yosemite National Park", artist: "Gregory Kondos", category: "Modern", description: "Kondos was an artist-in-residence at Yosemite National Park, where he lived for many summers.", location: "Los Angeles", price: "USD 220", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1400/MTgxOTg2NzM0MTAyMjkxNzg0/20-greatest-paintings-of-modern-art.webp")
artwork49.photo.attach(io: file, filename: "yosemite.jpg", content_type: "image/jpg")

artwork50 = Artwork.create(name: "The Apartment", artist: "Jacob Lawrence", category: "Modern", description: "Depicts the Diaspora of African Americans from South to North in the US during the 1910s.", location: "New York", price: "USD 620", user_id: user.id)
file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTgxMDU5MDM3ODA5MzUzODE2/20-greatest-paintings-of-modern-art.webp")
artwork50.photo.attach(io: file, filename: "apartment.jpg", content_type: "image/jpg")

# artwork32 = Artwork.create(name: "", artist: "", category: "Modern", description: "", location: "", price: "", user_id: user.id)
# file = URI.open("")
# artwork32.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")

# Artwork.create!(name: "Mona Lisa", artist: "Leonardo da Vinci", category: "Renaissance", description: "Average painting, very famous.", location: "Paris", photo: asset-url("monalisa.jpeg"), user_id: user.id)
# Artwork.create!(name: "The Scream", artist: "Edvard Munch", category: "Expressionist", description: "Scary face.", location: "Oslo", photo: asset-url("scream.jpeg"), user_id: user.id)
# Artwork.create!(name: "Campbell's Soup Cans", artist: "Andy Warhol", category: "Modern", description: "Lots of soup.", location: "New York", photo: asset-url("soupcans.jpeg"), user_id: user.id)
# Artwork.create!(name: "Composition with Red Blue and Yellow", artist: "Piet Mondrian", category: "Abstract", description: "Straight lines.", location: "Zurich", photo: asset-url("redyellowblue.jpeg"), user_id: user.id)
# Artwork.create!(name: "Number 1", artist: "Jackson Pollock", category: "Abstract", description: "Squiggly lines.", location: "LA", photo: asset-url("numberone.jpeg"), user_id: user.id)
