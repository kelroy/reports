require 'rubygems'
require 'dm-core'

class Line
  include DataMapper::Resource
  
  property :id,                 Serial
  property :transaction_id,     Integer
  property :item_id,            Integer  
  property :price,              Integer,  :default => 0, :required => true 
  property :quantity,           Integer,  :default => 0, :required => true 

  belongs_to :transaction
  has 1, :item

end