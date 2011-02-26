require 'rubygems'
require 'rake'

task :environment do
  require File.expand_path(File.join(*%w[ config environment ]), File.dirname(__FILE__))
end

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

namespace :db do
  desc "Seed the database"
  task :seed => :environment do
    require File.join(File.dirname(__FILE__), 'db/seed.rb')
  end
  
  desc "Drop the database"
  task :drop => :environment do
    File.delete(File.join(File.dirname(__FILE__), 'db/reports.db')) if File.exists? File.join(File.dirname(__FILE__), 'db/reports.db')
  end
  
  desc "Migrate the database"
  task :migrate => :environment do
    DataMapper.auto_migrate!
  end
  
  desc "Reset the database"
  task :reset => [:drop, :migrate, :seed]
end

namespace :irb do
  desc "Load IRB with environment required"
  task :run do
    sh('irb -r config/environment.rb')
  end
end

#task :default => 'db:reset'