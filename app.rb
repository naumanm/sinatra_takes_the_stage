# Dont mess with this it works

require 'sinatra'
require 'sinatra/reloader'
require './greeter'
require 'better_errors'

also_reload './greeter.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__ 
end

# before filter
before do
  @greeter = Greeter.new
end

get '/hi' do
  @greeter.greet
end

get '/quote/:tag' do
  @greeter.quote params[:tag]
end

get '/photo' do
  send_file "me.jpg"
end