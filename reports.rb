require 'sinatra'
require 'haml'

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
    set :haml,    {:format => :html5, :layout => :reports }
  end
  
  get '/?' do
    if params.empty?
      @transaction_data = Transaction.all
    else
      # Pull the date range
      # @transaction_data = Transaction.all
    end
    haml :index
  end

  not_found do
    redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end