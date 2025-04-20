# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

size_to_add = 10000 - Item.all.size
if size_to_add > 0
  i = 0
  puts "Adding #{size_to_add} items..."
  size_to_add.times do
    print "#{i += 1} / #{size_to_add}\r"
    Item.create(
      name: FFaker::Product.product_name,
      price: rand(1000..10000),
      description: FFaker::Lorem.paragraph,
      enabled: [ true, false ].sample
    )
  end
end
