require 'rubygems'
require 'dm-core'

class Goods
  include DataMapper::Resource

  property :id,                 Serial
  property :title,              String,                      :null => false
  property :description,        String
  property :sku,                String,                      :null => false
  property :price,              Integer,  :default => 0,     :null => false
  property :taxable,            Boolean,  :default => true,  :null => false
  property :discountable,       Boolean,  :default => true,  :null => false
  property :locked,             Boolean,  :default => false, :null => false
  property :active,             Boolean,  :default => false, :null => false
  property :created_at,         DateTime
  property :updated_at,         DateTime

end