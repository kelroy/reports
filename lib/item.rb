require 'rubygems'
require 'dm-core'

class Item
  include DataMapper::Resource
  
  property :id,                 Serial
  property :good_id,            Integer 
  property :title,              String,                  :required => true 
  property :description,        String
  property :price,              Integer,  :default => 0, :required => true 
  property :quantity,           Integer,  :default => 0, :required => true 
  property :created_at,         DateTime
  property :updated_at,         DateTime

  belongs_to :transaction
end