# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Outfit.destroy_all
User.destroy_all

User.create!(last_name: "Kap", first_name: "Kelly", password: 123456, email: "dghj@jkhdj.com")
User.create!(last_name: "Sonnenberg", first_name: "Hanna", password: 345677, email: "abl@hshjnn.com")
User.create!(last_name: "Sonn", first_name: "Anna", password: 945977, email: "ab9l@hsjnn.com")
User.create!(last_name: "Sun", first_name: "May", password: 745973, email: "a19l@hsn.com")
User.create!(last_name: "Sanny", first_name: "Moor", password: 7159113, email: "a1l@hskfn.com")


SIZES = ["xs", "s", "m", "l", "xl"]
CATEGORY = ["halloween", "new year", "christmas", "carnaval", "gala"]
LOCATION = ["delft", "amsterdam", "berlin", "hague", "paris"]

User.all.each do |user|
  10.times do
    Outfit.create(
    name: "Witch",
    size: SIZES.sample,
    gender: "female",
    price: rand(10..50),
    category: CATEGORY.sample,
    location: LOCATION.sample,
    start_date: Date.new(2020,5,23),
    end_date: Date.new(2020,5,24),
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus orci sapien, luctus vel odio id, hendrerit congue nisi. Morbi finibus nec urna a molestie. Fusce mi sapien, rutrum non elementum et, feugiat vitae odio. Integer id nunc vel risus egestas ullamcorper. Suspendisse potenti. Praesent non tellus vitae mi sodales eleifend eget eget sem. Quisque vitae dignissim dolor.",
    user: user
    )
  end
end

puts "#{Outfit.count} new outfits created"
puts "#{User.count} new user created"



