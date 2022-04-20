# require 'tty-table'
# require 'http'

# table = TTY::Table.new([Product.first.name, Product.second.name, Product.third.name], [["a1", "a2", "a3"], ["b1", "b2", "b3"]])

# table = TTY::Table.new(["header1","header2"], [["a1", "a2"], ["b1", "b2"]])
# puts table.render(:ascii)

# products = HTTP.get("http://localhost:3000/products").parse(:json)

# # pp products[0]
# # # pp products[0]["name"]

# products.each do |product| 
#   puts "Product Name: #{product["name"]}"
#   puts "Product Name: #{product["price"]}"
#   puts "Product Name: #{product["description"]}"
#   puts "############"
# end