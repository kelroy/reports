require 'rubygems'
require 'dm-core'

class Item
  include DataMapper::Resource
  
  property :id,                 Serial
  property :good_id,            Integer 
  property :form,               String,                  :required => true 
  property :amount,             Integer,  :default => 0, :required => true 
  property :created_at,         DateTime
  property :updated_at,         DateTime

  belongs_to :transaction
end