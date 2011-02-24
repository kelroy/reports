require 'rubygems'
require 'dm-core'
require 'sinatra'
require 'haml'
require 'dm-migrations'
#require 'lib/entries'
#require 'lib/goods'
#require 'lib/products'

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
	
	#datamapper init
    DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db")
    DataMapper.finalize
    DataMapper.auto_migrate!
  end
  
  get '/?' do
    "Hello World"
  end

  not_found do
    redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end
