require 'rubygems'
require 'rake'

namespace :compass do
  desc "Watch the stylesheets dir for changes"
  task :watch do
    sh("compass watch --sass-dir #{Dir.pwd}/stylesheets --css-dir #{Dir.pwd}/public/css -s compressed")
  end
  
  desc "Compile the stylesheets"
  task :compile do
    sh("compass compile --sass-dir #{Dir.pwd}/stylesheets --css-dir #{Dir.pwd}/public/css -s compressed")
  end
end