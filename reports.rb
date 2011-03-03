require 'sinatra'
require 'haml'

class Reports < Sinatra::Base

 configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
    set :haml,    {:format => :html5, :layout => :reports }
  end
  
  get '/?' do
    @report = Report::Transactions.new(params[:start], params[:finish]).generate
    haml :index
  end

  not_found do
    redirect '/'
  end
  
  get '/:input' do
    params[:input]
  end
end