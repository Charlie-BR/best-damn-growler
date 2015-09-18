require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
	session[:growlHistory] ||= []
	@growlHistory = session[:growlHistory].reverse
end


get '/' do
# 	# @name = session[:name]
	# @newGrowl = session[:newGrowl]
	erb :homepage
end


get '/newGrowl' do
	erb :newGrowl
end


# Add a new growl
post '/homepage' do
	session[:growlHistory] << params[:newGrowl]
	# @newGrowl = params[:newGrowl]
	# erb :homepage
	redirect "/homepage"
end
 

get '/homepage' do
	# @growlHistory = session[:growlHistory]
	erb :homepage
end
