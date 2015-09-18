require 'sinatra'
require 'sinatra/reloader'

before do

end

enable :sessions

#Routes
get '/' do
	@name = session[:name]
	# "Hello, #{session[:name]}"
	erb :homepage
end

get '/newGrowl' do	
	@name = session[:name]

	erb :newGrowl
end
