Monster.create!([
  {name: "Zombie", origin: "Varies, generally virus.", price: "15.0", description: "Reanimated corpse. Infects those it bites. Discounts offered for bulk orders.", image: "http://bit.ly/2coOxtz", danger_rating: 2, in_stock: false, supplier_id: 1},
  {name: "Vampyre", origin: "Sired by another vampire.", price: "50.0", description: "A bloodsucking creature of the night. No sparkles.", image: "http://bit.ly/2bNrR5T", danger_rating: 4, in_stock: false, supplier_id: 2},
  {name: "Cthulu", origin: "Here long before us.", price: "50000.0", description: "An unimaginable eldritch god.", image: "http://bit.ly/2bNqSTb", danger_rating: 100, in_stock: false, supplier_id: 3},
  {name: "Witch", origin: "The woods ", price: "250.0", description: "A woman cursed with magicks. ", image: "http://bit.ly/2bGxzAZ", danger_rating: 10, in_stock: false, supplier_id: 2},
  {name: "Maker", origin: "Arrakis ", price: "1000.0", description: "A sand worm from the desert. Ridable, but this is only recommended for experienced users. ", image: "http://bit.ly/2c67dul", danger_rating: 50, in_stock: false, supplier_id: 3},
  {name: "Kanye West", origin: "Chicago", price: "25000.0", description: "Everybody knows he's a mutha fucking monster. ", image: "http://bit.ly/2cr0wCr", danger_rating: 1, in_stock: false, supplier_id: 3},
  {name: "Werewolf", origin: "Bitten by another werewolf.", price: "55.0", description: "A fierce man/wolf hybrid. Only available once a month.", image: "http://bit.ly/2cp6Vzy", danger_rating: 5, in_stock: false, supplier_id: 1},
  {name: "Kappa", origin: "Bodies of water.", price: "30.0", description: "A swamp creature, fond of luring victims to its lair for consumption.", image: "http://bit.ly/2bTpnk3", danger_rating: 3, in_stock: false, supplier_id: 2},
  {name: "Ghost", origin: "Unfinished business", price: "2.0", description: "An ethereal presence. Best used for atmosphere.", image: "http://bit.ly/2cjilGS", danger_rating: 1, in_stock: false, supplier_id: 1},
  {name: "Skeleton", origin: "Graveyards, generally.", price: "15.0", description: "A reanimated pile of bones. Not much of a threat by themselves.", image: "http://bit.ly/2bNxJKy", danger_rating: 2, in_stock: false, supplier_id: 1}
])
Supplier.create!([
  {name: "Dr. Frankenstein", email: "vfranks@transu.com", phone: "(832)666-2938"},
  {name: "Seth Brundle", email: "flyboy@gmail.com", phone: "(555)323-3558"},
  {name: "MacReady", email: "mac@arcticbase.com", phone: "(333)328-5373"}
])
