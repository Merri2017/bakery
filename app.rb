require 'rubygems'
require 'sinatra'
require 'sendgrid-ruby'

get '/' do
	erb :index

end

get '/bread' do 
	erb :bread
	
end

get '/cookies' do
	erb :cookies

end


get '/muffins' do 
	erb :muffins

end