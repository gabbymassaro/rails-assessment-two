# db/seeds.rb
VendorsSweet.destroy_all
Comment.destroy_all
Sweet.destroy_all
Vendor.destroy_all

# Seed Sweets
puts "Seeding Sweets...🌱"
sweets = Sweet.create!([
  { name: "Chocolate Cake" },
  { name: "Lemon Tart" },
  { name: "Candy Cane" },
  { name: "Vanilla Ice Cream" },
  { name: "Strawberry Cheesecake" }
])

# Seed Vendors
puts "Seeding Vendors...🌱"
vendors = Vendor.create!([
  { name: "Sweet Treats" },
  { name: "Candy Land" },
  { name: "Dessert Delights" },
  { name: "Sugar Rush" }
])

# Seed VendorSweets
puts "Seeding VendorSweets...🌱"
vendors_sweets = [
  { vendor_id: vendors[0].id, sweet_id: sweets[0].id }, # Sweet Treats - Chocolate Cake
  { vendor_id: vendors[0].id, sweet_id: sweets[1].id }, # Sweet Treats - Lemon Tart
  { vendor_id: vendors[1].id, sweet_id: sweets[2].id }, # Candy Land - Candy Cane
  { vendor_id: vendors[2].id, sweet_id: sweets[3].id }, # Dessert Delights - Vanilla Ice Cream
  { vendor_id: vendors[3].id, sweet_id: sweets[4].id }, # Sugar Rush - Strawberry Cheesecake
  { vendor_id: vendors[1].id, sweet_id: sweets[3].id }, # Candy Land - Vanilla Ice Cream
  { vendor_id: vendors[2].id, sweet_id: sweets[4].id }  # Dessert Delights - Strawberry Cheesecake
]

VendorsSweet.create!(vendors_sweets)

# Seed Comments
puts "Seeding Comments...🌱"
comments = Comment.create!([
  { content: "Absolutely delicious!", vendor_id: vendors[0].id, sweet_id: sweets[0].id },
  { content: "Too sweet for my taste.", vendor_id: vendors[1].id, sweet_id: sweets[2].id },
  { content: "Perfect for summer!", vendor_id: vendors[2].id, sweet_id: sweets[3].id },
  { content: "Will definitely order again!", vendor_id: vendors[3].id, sweet_id: sweets[4].id }
])

puts "Seed data successfully created!"