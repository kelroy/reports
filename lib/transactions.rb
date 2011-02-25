require 'rubygems'
require 'dm-core'

class Transactions
  include DataMapper::Resource

  property :id,                  Serial
  property :store_id,            Integer
  property :customer_id,         Integer
  property :tax_rate,            Decimal,  :default => 0.0,   :required => true 
  property :complete,            Boolean,  :default => true,  :required => true 
  property :locked,              Boolean,  :default => false, :required => true
  property :created_at,          DateTime
  property :updated_at,          DateTime
  
end