require 'rubygems'
require 'dm-core'

class Entries # You had a period after Entries (Entries.)
  include DataMapper::Resource
  
  property :id,                 Serial
  property :transaction_id,     Serial,                  :null => false
  property :good_id,            Serial
  property :service_id,         Serial
  property :unit_id,            Serial
  property :title,              String,                  :null => false
  property :description,        String
  property :price,              Integer,  :default => 0, :null => false
  property :quantity,           Integer,  :default => 0, :null => false
  property :created_at,         DateTime
  property :updated_at,         DateTime

end