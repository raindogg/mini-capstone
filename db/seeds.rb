# Supplier.create!([
#   {name: "Dr. Frankenstein", email: "vfranks@transu.com", phone: "(832)666-2938"},
#   {name: "Seth Brundle", email: "flyboy@gmail.com", phone: "(555)323-3558"},
#   {name: "MacReady", email: "mac@arcticbase.com", phone: "(333)328-5373"}
# ])
# Monster.create!([
#   {name: "Zombie", origin: "Varies, generally virus.", price: "15.0", description: "Reanimated corpse. Infects those it bites. Discounts offered for bulk orders.", danger_rating: 2, in_stock: true, supplier_id: 1},
#   {name: "Vampyre", origin: "Sired by another vampire.", price: "50.0", description: "A bloodsucking creature of the night. No sparkles.", danger_rating: 4, in_stock: true, supplier_id: 2},
#   {name: "Cthulu", origin: "Here long before us.", price: "50000.0", description: "An unimaginable eldritch god.", danger_rating: 100, in_stock: true, supplier_id: 3},
#   {name: "Witch", origin: "The woods ", price: "250.0", description: "A woman cursed with magicks. ", danger_rating: 10, in_stock: true, supplier_id: 2},
#   {name: "Maker", origin: "Arrakis ", price: "1000.0", description: "A sand worm from the desert. Ridable, but this is only recommended for experienced users. ", danger_rating: 50, in_stock: true, supplier_id: 3},
#   {name: "Kanye West", origin: "Chicago", price: "25000.0", description: "Everybody knows he's a mutha fucking monster. ", danger_rating: 1, in_stock: true, supplier_id: 3},
#   {name: "Werewolf", origin: "Bitten by another werewolf.", price: "55.0", description: "A fierce man/wolf hybrid. Only available once a month.", danger_rating: 5, in_stock: true, supplier_id: 1},
#   {name: "Kappa", origin: "Bodies of water.", price: "30.0", description: "A swamp creature, fond of luring victims to its lair for consumption.", danger_rating: 3, in_stock: true, supplier_id: 2},
#   {name: "Ghost", origin: "Unfinished business", price: "2.0", description: "An ethereal presence. Best used for atmosphere.", danger_rating: 1, in_stock: true, supplier_id: 1},
#   {name: "Skeleton", origin: "Graveyards, generally.", price: "15.0", description: "A reanimated pile of bones. Not much of a threat by themselves.", danger_rating: 2, in_stock: true, supplier_id: 1}
# ])
# Category.create!([
#   {name: "Creatures"},
#   {name: "Revenants"},
#   {name: "gods"},
#   {name: "Subtle"}
# ])
CategoryMonster.create!([
#   {category_id: 1, monster_id: 2},
#   {category_id: 2, monster_id: 2},
#   {category_id: 1, monster_id: 3},
#   {category_id: 3, monster_id: 3},
#   {category_id: 2, monster_id: 5},
#   {category_id: 4, monster_id: 8},
#   {category_id: 1, monster_id: 8},
  {category_id: 1, monster_id: 5}, # This guy 
  {category_id: 4, monster_id: 6},
  {category_id: 1, monster_id: 7}, # werewolf
  {category_id: 4, monster_id: 7}, # werewolf 
  {category_id: 1, monster_id: 8}, # kappa
  {category_id: 2, monster_id: 9}, # ghost
  {category_id: 4, monster_id: 9}, # ghost
  {category_id: 1, monster_id: 10},
  {category_id: 2, monster_id: 10},
  {category_id: 4, monster_id: 10}
])
Image.create!([
  {url: "http://bit.ly/2coOxtz", monster_id: 1},
  {url: "http://bit.ly/2bNrR5T", monster_id: 2},
  {url: "http://bit.ly/2bNqSTb", monster_id: 3},
  {url: "http://bit.ly/2bGxzAZ", monster_id: 4},
  {url: "http://bit.ly/2c67dul", monster_id: 5},
  {url: "http://bit.ly/2cr0wCr", monster_id: 6},
  {url: "http://bit.ly/2cp6Vzy", monster_id: 7},
  {url: "http://bit.ly/2bTpnk3", monster_id: 8},
  {url: "http://bit.ly/2cjilGS", monster_id: 9},
  {url: "http://bit.ly/2bNxJKy", monster_id: 10},
  {url: "http://bit.ly/2c50GxY", monster_id: 1},
  {url: "http://bit.ly/2cnmxni", monster_id: 4}
])
User.create!([
  {name: "joe", email: "joe@gmail.com", password: "password", password_confirmation: "password", admin: false},
  {name: "jorge", email: "jorge@yahoo.com", password: "password", password_confirmation: "password", admin: false},
  {name: "admin_frank", email: "admin_frank@gmail.com", password: "password", password_confirmation: "password", admin: true},
  {name: "admin_steve", email: "admin@gmail.com", password: "password", password_confirmation: "password", admin: true},
  {name: "jake", email: "jake@adventuretime.com", password: "password", password_confirmation: "password", admin: false}
])
Order.create!([
  {user_id: 1, subtotal: "50.0", tax: "4.5", total: "54.5"},
  {user_id: 1, subtotal: "50.0", tax: "4.5", total: "54.5"},
  {user_id: 1, subtotal: "50.0", tax: "4.5", total: "54.5"},
  {user_id: 1, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 1, subtotal: "25000.0", tax: "2250.0", total: "27250.0"},
  {user_id: 1, subtotal: "250.0", tax: "22.5", total: "272.5"},
  {user_id: 1, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 1, subtotal: "165.0", tax: "14.85", total: "69.85"},
  {user_id: 1, subtotal: "25000.0", tax: "2250.0", total: "27250.0"},
  {user_id: 1, subtotal: "25000.0", tax: "2250.0", total: "27250.0"},
  {user_id: 1, subtotal: "100015.0", tax: "9001.35", total: "109016.35"},
  {user_id: 1, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 1, subtotal: "50.0", tax: "4.5", total: "54.5"},
  {user_id: 1, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 4, subtotal: "55.0", tax: "17.55", total: "212.55"},
  {user_id: 4, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 4, subtotal: "30.0", tax: "2.7", total: "32.7"}
])
CartedProduct.create!([
  {user_id: 1, monster_id: 5, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 2, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 6, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 5, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 1, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 7, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 8, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 6, quantity: 1, status: "purchased", order_id: 11},
  {user_id: 1, monster_id: 3, quantity: 2, status: "purchased", order_id: 12},
  {user_id: 1, monster_id: 5, quantity: 1, status: "purchased", order_id: 12},
  {user_id: 1, monster_id: 2, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 5, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "purchased", order_id: 13},
  {user_id: 1, monster_id: 2, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 1, monster_id: 5, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 2, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 2, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 2, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 5, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 2, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "purchased", order_id: 20},
  {user_id: 1, monster_id: 2, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 7, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 3, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, monster_id: 5, quantity: 2, status: "removed", order_id: nil},
  {user_id: 4, monster_id: 5, quantity: 2, status: "purchased", order_id: 21},
  {user_id: 4, monster_id: 7, quantity: 3, status: "purchased", order_id: 21},
  {user_id: 4, monster_id: 3, quantity: 1, status: "purchased", order_id: 22},
  {user_id: 4, monster_id: 5, quantity: 2, status: "purchased", order_id: 23}
])
