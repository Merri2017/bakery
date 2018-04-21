# require 'rubygems'
# require 'sinatra'
# require 'sendgrid-ruby'



# write class here

class Cookie
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

@total_price = $total_price

cookie_one = Cookie.new("Chocolate Chip Cookies","Chocolate Chip Cookies are gluten/wheat free and made with natural ingredients. " , 1.50, 1)
# puts cookie1
# .total_price(1.50, 2)
cookie_two = Cookie.new("Oat Cookies", "Oat Cookies are gluten free and made with natural ingredients.", 1.00, 1)


