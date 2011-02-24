require 'rubygems'
require 'dm-core'

class Transactions
  include DataMapper::Resource

  property :id,                  Serial
  property :store_id,            Integer # Can only have one Serial (This is the primary_key)
  property :customer_id,         Integer # Can only have one Serial (This is the primary_key)
  property :tax_rate,            Decimal,  :default => 0.0,   :required => true # Need :required => true not :null => false for DataMapper
  property :complete,            Boolean,  :default => true,  :required => true # Need :required => true not :null => false for DataMapper
  property :locked,              Boolean,  :default => false, :required => true # Need :required => true not :null => false for DataMapper
  property :created_at,          DateTime
  property :updated_at,          DateTime
  
end