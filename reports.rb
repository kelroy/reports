require 'rubygems'
require 'sinatra'
require 'haml'
require 'dm-core'
require 'dm-migrations'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
    set :haml,    {:format => :html5, :layout => :reports }
    
    # datamapper init
    DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db") # Does this path exist?
    DataMapper.finalize
    DataMapper.auto_migrate!
  end
  
  get '/?' do
    #@transaction_data = Transaction.all
    haml :index
  end

  not_found do
    #redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end