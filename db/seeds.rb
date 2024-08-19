# db/seeds.rb
VendorsSweet.destroy_all
Sweet.destroy_all
Vendor.destroy_all

# Seed Sweets
puts "Seeding Sweets...🌱"
chocolate = Sweet.create!(name: "Chocolate")
candy_cane = Sweet.create!(name: "Candy Cane")
cupcake = Sweet.create!(name: "Cupcake")
macaron = Sweet.create!(name: "Macaron")
donut = Sweet.create!(name: "Donut")

# Seed Vendors
puts "Seeding Vendors...🌱"
sweet_shop = Vendor.create!(name: "Sweet Shop")
bakery_bites = Vendor.create!(name: "Bakery Bites")
sugar_rush = Vendor.create!(name: "Sugar Rush")
treats_galore = Vendor.create!(name: "Treats Galore")
delicious_delights = Vendor.create!(name: "Delicious Delights")

# Seed VendorSweets
puts "Seeding VendorSweets...🌱"
VendorsSweet.create!(vendor: sweet_shop, sweet: chocolate)
VendorsSweet.create!(vendor: sweet_shop, sweet: candy_cane)
VendorsSweet.create!(vendor: bakery_bites, sweet: cupcake)
VendorsSweet.create!(vendor: bakery_bites, sweet: macaron)
VendorsSweet.create!(vendor: sugar_rush, sweet: donut)
VendorsSweet.create!(vendor: treats_galore, sweet: chocolate)
VendorsSweet.create!(vendor: treats_galore, sweet: donut)
VendorsSweet.create!(vendor: delicious_delights, sweet: macaron)
VendorsSweet.create!(vendor: delicious_delights, sweet: candy_cane)

puts "Seed data successfully created!"