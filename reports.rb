require 'sinatra'
require 'haml'
<<<<<<< HEAD
<<<<<<< HEAD
require 'dm-migrations'
#require 'lib/entries'
#require 'lib/goods'
#require 'lib/products'
=======
require 'dm-core'
require 'dm-migrations'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
>>>>>>> 5a5619984a9d599da71c7a4604c43b03865a7b2f
=======
>>>>>>> 002532a93dfeed6a98d5d2e7e5ea2b95c0008592

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
<<<<<<< HEAD
	
	#datamapper init
    DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db")
=======
    set :haml,    {:format => :html5, :layout => :reports }
<<<<<<< HEAD
    
    # datamapper init
    DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db") # Does this path exist?
>>>>>>> 5a5619984a9d599da71c7a4604c43b03865a7b2f
    DataMapper.finalize
    DataMapper.auto_migrate!
  end
  
  get '/?' do
<<<<<<< HEAD
    "Hello World"
=======
    #@transaction_data = Transaction.all
=======
  end
  
  get '/?' do
    if params.empty?
      @transaction_data = Transaction.all
    else
      # Pull the date range
      # @transaction_data = Transaction.all
    end
>>>>>>> 002532a93dfeed6a98d5d2e7e5ea2b95c0008592
    haml :index
>>>>>>> 5a5619984a9d599da71c7a4604c43b03865a7b2f
  end

  not_found do
    redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end
