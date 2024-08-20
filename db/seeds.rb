# db/seeds.rb
VendorsSweet.destroy_all
Sweet.destroy_all
Vendor.destroy_all

# Seed Sweets
puts "Seeding Sweets...🌱"
sweet1 = Sweet.create!(name: "Chocolate Truffle")
sweet2 = Sweet.create!(name: "Lemon Tart")
sweet3 = Sweet.create!(name: "Caramel Apple")
sweet4 = Sweet.create!(name: "Vanilla Cupcake")

# Seed Vendors
puts "Seeding Vendors...🌱"
vendor1 = Vendor.create!(name: "Sweet Delights Bakery")
vendor2 = Vendor.create!(name: "Gourmet Sweets")
vendor3 = Vendor.create!(name: "The Candy Shop")
vendor4 = Vendor.create!(name: "Pastry Heaven")

# Seed VendorSweets
puts "Seeding VendorSweets...🌱"
VendorsSweet.create!(vendor_id: vendor1.id, sweet_id: sweet1.id, comment: "Best seller")
VendorsSweet.create!(vendor_id: vendor1.id, sweet_id: sweet2.id, comment: "Limited edition")
VendorsSweet.create!(vendor_id: vendor2.id, sweet_id: sweet3.id, comment: "Seasonal favorite")
VendorsSweet.create!(vendor_id: vendor2.id, sweet_id: sweet4.id, comment: "Customer favorite")
VendorsSweet.create!(vendor_id: vendor3.id, sweet_id: sweet1.id, comment: "New addition")
VendorsSweet.create!(vendor_id: vendor3.id, sweet_id: sweet3.id, comment: "Popular among kids")
VendorsSweet.create!(vendor_id: vendor4.id, sweet_id: sweet2.id, comment: "Classic choice")
VendorsSweet.create!(vendor_id: vendor4.id, sweet_id: sweet4.id, comment: "Top seller")

puts "Seed data successfully created!"