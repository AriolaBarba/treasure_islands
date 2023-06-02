# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Island.destroy_all
User.destroy_all

user = User.create(email: "lola@gmail.com", password: "claralala")

island1 = Island.create(user: user, name: "Monkey Island", description: "The Bahamas is a tropical paradise consisting of 700 islands and cays in the Atlantic Ocean. It offers stunning white sandy beaches, crystal-clear turquoise waters, and vibrant coral reefs. With its luxurious resorts, water sports, and vibrant culture, the Bahamas is a perfect destination for relaxation and adventure.", location: "3MJM+2X Nassau, The Bahamas", price: "£2.0M")
island1.photos.attach(io: File.open("app/assets/images/Islandseeds/Bahamas1.jpeg"), filename: "Bahamas1.jpeg", content_type: "image/jpeg")
island1.photos.attach(io: File.open("app/assets/images/Islandseeds/Bahamas2.jpeg"), filename: "Bahamas2.jpeg", content_type: "image/jpeg")
island1.save

island2 = Island.create(user: user, name: "Skull Island", description: "Barbados, located in the eastern Caribbean, is known for its pristine beaches, vibrant culture, and warm hospitality. This island offers a mix of natural beauty, historical sites, and exciting activities. From exploring colonial architecture in Bridgetown to enjoying water sports on the south coast, Barbados has something for everyone.", location: " 31 Sunrise Street, Green Garden, BB17127, Barbados", price: "£1.3M")
island2.photos.attach(io: File.open("app/assets/images/Islandseeds/barbados1.jpeg"), filename: "barbados1.jpeg", content_type: "image/jpeg")
island2.photos.attach(io: File.open("app/assets/images/Islandseeds/barbados2.jpeg"), filename: "barbados2.jpeg", content_type: "image/jpeg")
island2.save

island3 = Island.create(user: user, name: "Shipwreck Island", description: "Bora-Bora is a breathtaking island in French Polynesia renowned for its stunning turquoise lagoon and iconic overwater bungalows. Surrounded by coral reefs and lush mountains, Bora-Bora is a haven for honeymooners and nature enthusiasts. It offers a tranquil atmosphere, exceptional snorkeling and diving opportunities, and unforgettable sunsets.", location: "G62V+F5 Bora-Bora, French Polynesia", price: "£1.8M")
island3.photos.attach(io: File.open("app/assets/images/Islandseeds/bora-bora1.jpeg"), filename: "bora-bora1.jpeg", content_type: "image/jpeg")
island3.photos.attach(io: File.open("app/assets/images/Islandseeds/bora-bora2.jpeg"), filename: "bora-bora2.jpeg", content_type: "image/jpeg")
island3.save

island4 = Island.create(user: user, name: "Coconut Island", description: "The Maldives is a tropical paradise in the Indian Ocean, famous for its pristine white sandy beaches, turquoise lagoons, and luxury resorts. With its abundant marine life, colorful coral reefs, and overwater villas, the Maldives is a top destination for honeymooners and those seeking relaxation and tranquility.", location: "South Atoll, Alifu Atoll 00200, 3.8853495, 72.7275221,18, Moofushi Island, Maldives", price: "£7.2M")
island4.photos.attach(io: File.open("app/assets/images/Islandseeds/maldives1.jpeg"), filename: "maldives1.jpeg", content_type: "image/jpeg")
island4.photos.attach(io: File.open("app/assets/images/Islandseeds/maldives2.jpeg"), filename: "maldives2.jpeg", content_type: "image/jpeg")
island4.save

island5 = Island.create(user: user, name: "Turtle Island", description: "Hawaii is a tropical paradise known for its stunning beaches, volcanic landscapes, and rich Polynesian culture. With its lush rainforests, towering waterfalls, and world-class surf spots, Hawaii is a dream destination for outdoor enthusiasts. Whether exploring the vibrant city of Honolulu or hiking through the scenic Waimea Canyon, Hawaii offers a diverse range of experiences.", location: "69-425 Waikōloa Beach Dr, Waikoloa Village, HI 96738, United States", price: "£3.9M")
island5.photos.attach(io: File.open("app/assets/images/Islandseeds/hawaii1.jpeg"), filename: "hawaii1.jpeg", content_type: "image/jpeg")
island5.photos.attach(io: File.open("app/assets/images/Islandseeds/hawaii2.jpeg"), filename: "hawaii2.jpeg", content_type: "image/jpeg")
island5.save

island6 = Island.create(user: user, name: "White Sands Island", description: "Indonesia is an archipelago of over 17,000 islands, each offering its own unique charm. From the iconic paradise of Bali with its rice terraces and ancient temples to the untouched beauty of Komodo Island with its legendary Komodo dragons, Indonesia is a haven for nature lovers and adventure seekers.", location: "Batulo, Wolio, Bau-Bau City, South East Sulawesi 93716, Indonesia", price: "£2.2M")
island6.photos.attach(io: File.open("app/assets/images/Islandseeds/indonesia1.jpeg"), filename: "indonesia1.jpeg", content_type: "image/jpeg")
island6.photos.attach(io: File.open("app/assets/images/Islandseeds/indonesia2.jpeg"), filename: "indonesia2.jpeg", content_type: "image/jpeg")
island6.save

puts "Finished seeding"
