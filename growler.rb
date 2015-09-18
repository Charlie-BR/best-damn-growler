require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
	session[:growlHistory] ||= []
end

get '/' do
	@name = session[:name]
	erb :homepage
end

get '/newGrowl' do
	erb :newGrowl
end

# Add a new growl
post '/newGrowl' do
	session[:growlHistory] << params[:newGrowl]
	@newGrowl = params[:newGrowl]
	erb :homepage
end

get '/homepage' do
	@growlHistory = session[:growlHistory]
	erb :homepage
end

post '/homepage' do
	puts :growlHistory
end