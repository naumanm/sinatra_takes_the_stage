require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
	"hi I am Frank"
end

get '/quote/:tag' do
	quotes = {
  	:kohol => [
  		"test1", 
  		"test2",
  		"test3"
  	],
  	:women => [
  		"blond",
  		"brunette"
		]
	}
end

# quotes[params[:tag].to_sym]
