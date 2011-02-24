require 'rubygems'
require 'dm-core'

class Entries # You had a period after Entries (Entries.)
  include DataMapper::Resource
  
  property :id,                 Serial
  property :transaction_id,     Integer,                 :required => true # Need :required => true not :null => false for DataMapper # Can only have one Serial (This is the primary_key)
  property :good_id,            Integer # Can only have one Serial (This is the primary_key)
  property :service_id,         Integer # Can only have one Serial (This is the primary_key)
  property :unit_id,            Integer # Can only have one Serial (This is the primary_key)
  property :title,              String,                  :required => true # Need :required => true not :null => false for DataMapper
  property :description,        String
  property :price,              Integer,  :default => 0, :required => true # Need :required => true not :null => false for DataMapper
  property :quantity,           Integer,  :default => 0, :required => true # Need :required => true not :null => false for DataMapper
  property :created_at,         DateTime
  property :updated_at,         DateTime

end