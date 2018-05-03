require 'rubygems'
require 'sinatra'
require 'sendgrid-ruby'

require_relative './cookie'
require_relative './bread'
require_relative './muffin'
include SendGrid

# homepage
get '/' do

	erb :index
end
# bread page
get '/bread' do 
	@bread_one = Bread.new("Banana Loaf","Banana Bread is gluten/wheat free and made with natural ingredients. " , 4, 1 )
	@bread_two = Bread.new("Rustic Bread", "Rustic Bread is gluten free and made with natural ingredients.", 3, 1 )
	erb :bread
	
end
# cookies page
get '/cookies' do
	@cookie_one = Cookie.new("Chocolate Chip Cookies","Chocolate Chip Cookies are gluten/wheat free and made with natural ingredients. " , 1.5, 1)
	@cookie_two = Cookie.new("Oat Cookies", "Oat Cookies are gluten free and made with natural ingredients.", 1, 1)
	erb :cookies

end

# muffins page
get '/muffins' do
	@muffin_one = Muffin.new("Orange Muffins","Orange Muffins are gluten/wheat free and made with natural ingredients. " , 2.5, 1)
	@muffin_two = Muffin.new("Corn Muffins", "Corn Muffins are gluten free and made with natural ingredients.", 1.5, 1) 
	erb :muffins

end


# This api thing is the whole route. 
post '/sent' do
	erb :sent



	# this is to store the email user inputs
	email = params[:mail]


	from = Email.new(email: 'taste_tester@yahoo.com')
	to = Email.new(email: @email)
	subject = 'Here is a copy of our menu'
	content = Content.new(type: 'text/plain', value: '@bread_one, @bread_two, @cookie_one @cookie_two, @muffin_one, @muffin_two')
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.parsed_body
	puts response.headers
end 


