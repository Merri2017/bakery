# write class here
# write class here
require './cookie.rb'
#later test if I can delete class and only have the new objects.

class Muffin
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

muffin_one = Muffin.new("Orange Muffins","Orange Muffins are gluten/wheat free and made with natural ingredients. " , 2.50, 1)
# puts cookie1
# .total_price(1.50, 2)
muffin_two = Muffin.new("Corn Muffins", "Corn Muffins are gluten free and made with natural ingredients.", 1.50, 1)