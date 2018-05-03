# write class here
# require './cookie.rb'
#later test if I can delete class and only have the new objects.

class Bread
	attr_accessor :name, :description, :price, :quantity
# gets info of each cookie
	def initialize(name, description, price, quantity)
		@name = name
		@description = description
		@price = price
		@quantity = quantity
	end
# gets total
	def total_price(price, quantity)
		return @price * quantity
	end
end

# bread1 = Bread.new("Banana Loaf","Banana Bread is gluten/wheat free and made with natural ingredients. " , 4.00, 1)
# # puts cookie1
# # .total_price(1.50, 2)
# bread2 = Bread.new("Rustic Bread", "Rustic Bread is gluten free and made with natural ingredients.", 3.00, 1)
