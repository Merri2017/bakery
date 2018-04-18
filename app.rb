require 'rubygems'
require 'sinatra'
require 'sendgrid-ruby'
require_relative './cookie'
require_relative './bread'

# all_cookies = [cookie1, cookie2]


include SendGrid

from = Email.new(email: 'test@example.com')
to = Email.new(email: 'test@example.com')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.parsed_body
puts response.headers





get '/' do

	erb :index
end

get '/bread' do 
	@bread_one = Bread.new("Banana Loaf","Banana Bread is gluten/wheat free and made with natural ingredients. " , 4.00, 1)
	@bread_two = Bread.new("Rustic Bread", "Rustic Bread is gluten free and made with natural ingredients.", 3.00, 1)
	erb :bread
	
end

get '/cookies' do
	@cookie_one = Cookie.new("Chocolate Chip Cookies","Chocolate Chip Cookies are gluten/wheat free and made with natural ingredients. " , 1.50, 1)
	@cookie_two = Cookie.new("Oat Cookies", "Oat Cookies are gluten free and made with natural ingredients.", 1.00, 1)
	erb :cookies

end


get '/muffins' do
	@muffin_one = Muffin.new("Orange Muffins","Orange Muffins are gluten/wheat free and made with natural ingredients. " , 2.50, 1)
	@muffin_two = Muffin.new("Corn Muffins", "Corn Muffins are gluten free and made with natural ingredients.", 1.50, 1) 
	erb :muffins

end




