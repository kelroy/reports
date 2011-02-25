require 'lib/goods'
require 'lib/items'
require 'lib/transaction'
require 'rubygems'
require 'dm-core'
require 'dm-migrations'

# datamapper init
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/reports.db") 
DataMapper.finalize
DataMapper.auto_migrate!

transaction_a = Transaction.create(
  :complete => 'True', 
  :tax_rate => '.07', 
  :created_at => Time.now, 
  :updated_at => Time.now
)

transaction_b = Transaction.create(
  :complete => 'True', 
  :tax_rate => '.07', 
  :created_at => Time.now, 
  :updated_at => Time.now
)


