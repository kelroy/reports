require 'rubygems'
require 'dm-core'
require 'sinatra'
require 'haml'
require 'dm-migrations'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
    set :haml,    {:format => :html5, :layout => :reports }
    
    #datamapper init
    DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db") # Does this path exist?
    DataMapper.finalize
    DataMapper.auto_migrate!
  end
  
  get '/?' do
    # You were missing a tab here... (haml wasn't tabbed over. I fixed it.)
    # You are asking Haml to render the 'show.haml' file... Hint: That file doesn't exist (But you do have two layout files. Do you mean to?)
    haml :show, :layout => :reports 
  end

  not_found do
    redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end
