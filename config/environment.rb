require 'rubygems'
require 'dm-core'
require 'dm-migrations'

Dir[File.join(File.dirname(__FILE__), '../lib/*.rb')].each {|file| require file }

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/reports.db")
DataMapper.finalize
