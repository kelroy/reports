require 'rubygems'
require 'dm-core'

class Good
  include DataMapper::Resource

  property :id,                 Serial
  property :title,              String,                      :required => true # Need :required => true not :null => false for DataMapper
  property :description,        String
  property :sku,                String,                      :required => true # Need :required => true not :null => false for DataMapper
  property :price,              Integer,  :default => 0,     :required => true # Need :required => true not :null => false for DataMapper
  property :taxable,            Boolean,  :default => true,  :required => true # Need :required => true not :null => false for DataMapper
  property :discountable,       Boolean,  :default => true,  :required => true # Need :required => true not :null => false for DataMapper
  property :locked,             Boolean,  :default => false, :required => true # Need :required => true not :null => false for DataMapper
  property :active,             Boolean,  :default => false, :required => true # Need :required => true not :null => false for DataMapper
  property :created_at,         DateTime
  property :updated_at,         DateTime

end