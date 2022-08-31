# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


# EventVendor.create(event_id: 2, vendor_id: 1) 
# EventVendor.create(event_id: 3, vendor_id: 1) 
# EventVendor.create(event_id: 4, vendor_id: 1) 
# EventVendor.create(event_id: 5, vendor_id: 1) 
# EventVendor.create(event_id: 6, vendor_id: 1) 
# EventVendor.create(event_id: 7, vendor_id: 1) 
# EventVendor.create(event_id: 8, vendor_id: 2) 
# EventVendor.create(event_id: 2, vendor_id: 2) 
# EventVendor.create(event_id: 3, vendor_id: 2) 
# EventVendor.create(event_id: 4, vendor_id: 2) 
# EventVendor.create(event_id: 5, vendor_id: 2) 
# EventVendor.create(event_id: 6, vendor_id: 1) 
# EventVendor.create(event_id: 13, vendor_id: 1) 
# EventVendor.create(event_id: 16, vendor_id: 2) 
# EventVendor.create(event_id: 15, vendor_id: 2) 
# EventVendor.create(event_id: 24, vendor_id: 2) 
# EventVendor.create(event_id: 25, vendor_id: 2) 
# EventVendor.create(event_id: 26, vendor_id: 1) 




# wedding = Event.create(name: "Wedding")
# Event.create(name:"Wedding", parent_id: wedding.id)
# Event.create(name:"Sangeet", parent_id: wedding.id)
# Event.create(name:"Reception", parent_id: wedding.id)
# Event.create(name:"Engagement", parent_id: wedding.id)
# Event.create(name:"Bachelorette Party", parent_id: wedding.id)
# Event.create(name:"Destination Weddings", parent_id: wedding.id)
# Event.create(name:"Bridal Shower", parent_id: wedding.id)

# party = Event.create(name: "Parties")
# Event.create(name:"Birthday", parent_id: party.id)
# Event.create(name:"Get-Together", parent_id: party.id)
# Event.create(name:"Anniversary", parent_id: party.id)
# Event.create(name:"Graduation", parent_id: party.id)
# Event.create(name:"Kitty", parent_id: party.id)
# Event.create(name:"Fresher's", parent_id: party.id)
# Event.create(name:"Halloween", parent_id: party.id)

# corporate = Event.create(name: "Corporate")
# Event.create(name:"Team-Building", parent_id: corporate.id)
# Event.create(name:"Farewell", parent_id: corporate.id)
# Event.create(name:"Annual Day", parent_id: corporate.id)
# Event.create(name:"Employee meet", parent_id: corporate.id)

# festive = Event.create(name: "Festive Parties")
# Event.create(name:"New Year Party", parent_id: festive.id)
# Event.create(name:"Diwali Party", parent_id: festive.id)
# Event.create(name:"Christmas Party", parent_id: festive.id)
# Event.create(name:"Holi Party", parent_id: festive.id)



###################################CATEGORY###################################

# venue = Category.create(name: "Venue",event_id: 2)
# Category.create(name: "Banquet Halls", parent: venue)
# Category.create(name: "Farmhouses", ancestry: venue.id)
# Category.create(name: "Hotels", ancestry: venue.id)

stay = Category.create(name: "Stay",event_id: 2 )
Subcategory.create(category_id: stay.id,name: "Hotels")
Subcategory.create(category_id: stay.id,name: "Guest Houses")
Subcategory.create(category_id: stay.id,name: "Service Apartments")
# Category.create(name: "Hotels", ancestry: stay.id)
# Category.create(name: "Guest Houses", ancestry: stay.id)
# Category.create(name: "Service Apartments", ancestry: stay.id)


food_beverages = Category.create(name: "Food & Beverages",event_id: 2)
Subcategory.create(name: "Caterers", category_id: food_beverages.id)
Subcategory.create(name: "Drinks", category_id: food_beverages.id)
Subcategory.create(name: "Mixologist", category_id: food_beverages.id)
Subcategory.create(name: "Cakes, Chocolates", category_id: food_beverages.id)
Subcategory.create(name: "Sweets", category_id: food_beverages.id)

# car_rentals = Category.create(name: "Car Rental")
# Category.create(name: "Car Rentals",parent_id: car_rentals.id)


# decorator = Category.create(name: "Decorators")
# Category.create(name: "Tent House", parent_id: decorator.id)
# Category.create(name: "Florist", parent_id: decorator.id)
# Category.create(name: "Theme Planners", parent_id: decorator.id)

# beauty_health_style = Category.create(name: "Beauty, Health & Style")
# Category.create(name: "Beauty Parlor", parent_id: beauty_health_style.id)
# Category.create(name: "Nail Art", parent_id: beauty_health_style.id)
# Category.create(name: "Mehendi", parent_id: beauty_health_style.id)
# Category.create(name: "Spa", parent_id: beauty_health_style.id)
# Category.create(name: "Tattoo", parent_id: beauty_health_style.id)
# Category.create(name: "Hair Stylist", parent_id: beauty_health_style.id)
# Category.create(name: "Cosmetic & Dental Treatment", parent_id: beauty_health_style.id)
# Category.create(name: "Weight Loss", parent_id: beauty_health_style.id)
# Category.create(name: "Stylist", parent_id: beauty_health_style.id)
# Category.create(name: "Men's Salon", parent_id: beauty_health_style.id)

# fashion = Category.create(name: "Fashion")
# Category.create(name: "Bridal Wear",parent_id: fashion.id)
# Category.create(name: "Groom Wear", parent_id: fashion.id)
# Category.create(name: "Designer Wear/Party Wear", parent_id: fashion.id)
# Category.create(name: "Shoes & Bags", parent_id: fashion.id)
# Category.create(name: "Watches", parent_id: fashion.id)
# Category.create(name: "Artificial Jewellery", parent_id: fashion.id)
# Category.create(name: "Lingerie, Swimwear, Resortwear", parent_id: fashion.id)
# Category.create(name: "General Clothes", parent_id: fashion.id)

# invitation = Category.create(name: "Invitation")
# Category.create(name: "Wedding Cards", parent_id: invitation.id)
# Category.create(name: "Invitaion Gifts", parent_id: invitation.id)

# memories = Category.create(name: "Memories")
# Category.create(name: "Photography", parent_id: memories.id)
# Category.create(name: "Vediography", parent_id: memories.id)
# Category.create(name: "3-D Photography", parent_id: memories.id)
# Category.create(name: "Wedding Albums", parent_id: memories.id)

# entertainment = Category.create(name: "Entertainments")
# Category.create(name: "Wedding Bands", parent_id: entertainment.id)
# Category.create(name: "DJ", parent_id: entertainment.id)
# Category.create(name: "Pyrotechnics", parent_id: entertainment.id)
# Category.create(name: "Choreographer", parent_id: entertainment.id)
# Category.create(name: "Emcee/Anchor", parent_id: entertainment.id)
# Category.create(name: "Live-Band", parent_id: entertainment.id)
# Category.create(name: "Dancers", parent_id: entertainment.id)
# Category.create(name: "Horse, Horsecart, Palanquin (Doli)", parent_id: entertainment.id)

# jewellery = Category.create(name: "Jewellery")
# Category.create(name: "Engagement Ring", parent_id: jewellery.id)
# Category.create(name: "Mangalsutra", parent_id: jewellery.id)
# Category.create(name: "Diamond, Gold & Silver", parent_id: jewellery.id)
# Category.create(name: "Silverware", parent_id: jewellery.id)

# religious = Category.create(name: "Religious Service")
# Category.create(name: "Priests", parent_id: religious.id)
# Category.create(name: "Pooja Items", parent_id: religious.id)
# Category.create(name: "Astrologer", parent_id: religious.id)

# gifting = Category.create(name: "Gifting Ideas")

# dress_and_jewellery = Category.create(name: "Dress and Jewellery Rentals")

# wedding_planners = Category.create(name: "Wedding Planners",event_id: 2)

# destination = Category.create(name: "Destination Wedding")
# Category.create(name: "Goa", parent_id: destination.id,event_id: 7)
# Category.create(name: "Jaipur", parent_id: destination.id,event_id: 7)
# Category.create(name: "Udaipur", parent_id: destination.id,event_id: 7)
# Category.create(name: "Kerela", parent_id: destination.id,event_id: 7)

# honeymoon = Category.create(name: "Honeymoon")
# Category.create(name: "Packages", parent_id: honeymoon.id)
# Category.create(name: "Customized Honeymoon", parent_id: honeymoon.id)

# sexual_health = Category.create(name: "Sexual Health")
# Category.create(name: "Sexologists", parent_id: sexual_health.id)
# Category.create(name: "Hygiene and Care", parent_id: sexual_health.id)
# Category.create(name: "Accessories", parent_id: sexual_health.id)