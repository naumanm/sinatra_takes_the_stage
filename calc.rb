require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get "/add/:num1/:num2" do
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i

	"the sum is #{num1 + num2}"
end

get "/sub/:num1/:num2" do
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i

	"the difference is #{num1 - num2}"
end

get "/times/:num1/:num2" do
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i

	"num1 times num2 is #{num1 * num2}"
end

get "/divide/:num1/:num2" do
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
  begin
  	"divide #{num1 / num2}"
  rescue Exception
  	"dont divide by zero"
  end
end

