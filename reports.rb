require 'rubygems'
require 'sinatra'
require 'haml'

configure do 
	set :root, File.dirname(__FILE__)
end


get '/?' do
  "Hello World!"
end


get '/:input' do
  params[:input]

end

