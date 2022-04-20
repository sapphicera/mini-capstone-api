User.create!([
  {name: "Test name", email: "test@test.com", password_digest: "$2a$12$RC2hDnWtyCfo1tLEKTsAjezZGpBuNgaLIDY4gLRr0sCCBoiuZb3h2", admin: false},
  {name: "regina", email: "tactician@grams.com", password_digest: "$2a$12$0YGtvMlVZLI.wiEoOJ9BbuLCIkIXnJxgZCUSbUbkTB3.Sdni4Axqe", admin: true},
  {name: "Sandalphon", email: "archangel@grams.com", password_digest: "$2a$12$GzWUC4wAbjD2BX714kqej.YlxDWkesijlDuCoHIvBhGqi0DxEJixG", admin: false},
  {name: "mascula", email: "blue@tooth.com", password_digest: "$2a$12$u8tTu8sB5zUnZQfqPO8aL.YYmzAZ6w9AM.uJBrZLGMrRDGUzM2Jey", admin: false}
])
Supplier.create!([
  {name: "Example 1", email: "Example@One.com", phone: "1011011001"},
  {name: "Example 2", email: "Example@Two.com", phone: "2022022002"},
  {name: "Example 3", email: "Example@Three.com", phone: "3033033003"},
  {name: "squeaker", email: "test@test.com", phone: nil},
  {name: "p", email: nil, phone: nil}
])
Product.create!([
  {name: "Dyson V11 Animal Cordless Stick Vacuum", price: "599", description: "Engineered for whole-home, deep cleaning with suction power, run time and tools designed to deep clean your whole home. Dyson DLS™ technology automatically senses and adapts to changes in floor type to extend run time and provide the right balance of power and run time when you need it.", stock: 2, supplier_id: 3, user_id: 1},
  {name: "Gatorade", price: "2", description: "Gatorade is a brand of flavored non-carbonated sports drinks manufactured by the Quaker Oats Company, now a division of PepsiCo. Intended for consumption during physically active occasions, Gatorade beverages are formulated to rehydrate and replenish fluid, carbohydrates and electrolytes.", stock: 10, supplier_id: 3, user_id: 1},
  {name: "hi", price: "599", description: "Engineered for whole-home, deep cleaning with suction power, run time and tools designed to deep clean your whole home. Dyson DLS™ technology automatically senses and adapts to changes in floor type to extend run time and provide the right balance of power and run time when you need it.", stock: 3, supplier_id: 3, user_id: 1},
  {name: "Kit Kat", price: "1", description: "A KIT KAT® bar is made of three layers of wafer separated and covered by an outer layer of chocolate. The standard bars consist of four pieces, called fingers, and each finger can be snapped from the bar as an individual piece.", stock: 6, supplier_id: 2, user_id: 1},
  {name: "Blue Yeti USB Microphone (Silver)", price: "99", description: "A simple, yet powerfully effective tool for content creators, the Blue Microphones Yeti is a USB mic offering a broadcast-quality sound, a rugged design, and multiple recording modes to suit your needs. The Yeti, offfered here in a silver finish, has become a go-to mic for people who record podcasts, and who stream on YouTube, Twitch, Facebook Live, and other similar platforms.", stock: 4, supplier_id: 2, user_id: 1},
  {name: "Goupsky Roller Skate Shoes for Women (Blue)", price: "79", description: "58mm wheels give faster roll time for extreme speed.83A urethane is medium soft and grippy for everything from concrete to asphalt. Great for cruising through the park, skating along the boardwalk or showing off in your neighborhood, these skates can take the terrain.", stock: 1, supplier_id: 2, user_id: 1},
  {name: "Febreze Blossom & Breeze Vaporizador 300 Ml", price: "7", description: "Febreze AIR doesn't just mask odors, it cleans away odors with OdorClear Technology, leaving your air with a light, fresh scent. So when something stinky gets in your way, reach for Febreze AIR to eliminate odors on the spot.", stock: 16, supplier_id: 1, user_id: 1},
  {name: "Kraft Macaroni & Cheese", price: "3", description: "Kraft Macaroni and Cheese has no artificial flavors, preservatives or dyes. But it still has the great taste you know and love. Most of our mac and cheese products have 10% of the recommended daily value for calcium and 8 or 9 grams of protein.", stock: 8, supplier_id: 1, user_id: 1},
  {name: "Roomba", price: "299", description: "Roomba is a series of autonomous robotic vacuum cleaners sold by iRobot. Introduced in September 2002, they have a set of sensors that enable them to navigate the floor area of a home. These sensors can detect the presence of obstacles, particularly dirty spots on the floor, and steep drops (e.g. to avoid falling down stairs).", stock: 3, supplier_id: 1, user_id: 1},
  {name: "rewrwr", price: "33444", description: "fdsfskfsmfksfmkskmf", stock: 22, supplier_id: 1, user_id: 1},
  {name: "finnyrenes", price: "20202", description: "kjdsfndjsnfjsdnfksdnf", stock: 20, supplier_id: 1, user_id: 1}
])
Category.create!([
  {name: "Food"},
  {name: "Electronics"}
])
Image.create!([
  {url: "http://image.com/macncheese", product_id: 2},
  {url: "http://image.com/kitkat", product_id: 3},
  {url: "https://www.cvs.com/bizcontent/merchandising/productimages/large/37000962571.jpg", product_id: 1},
  {url: "https://m.media-amazon.com/images/I/81ImsR1V1-S._AC_SL1500_.jpg", product_id: 1},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 18},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 20},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 20},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 21},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 21},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 22},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 22},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 23},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 23},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 24},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 24},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 25},
  {url: "https://cdn.shopify.com/s/files/1/1083/2612/products/JapaneseKitKat_Hojicha_Tabling_1200x1200.jpg", product_id: 25}
])
CartedProduct.create!([
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 6, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 4, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 1, quantity: 10, status: "purchased", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 4, status: "carted", order_id: nil}
])
CategoryProduct.create!([
  {product_id: 6, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 2, category_id: 2}
])
Order.create!([
  {user_id: 2, subtotal: "223.72", tax: "20.13", total: "243.85"},
  {user_id: 2, subtotal: "383.52", tax: "34.52", total: "418.04"}
])
