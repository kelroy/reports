  require 'rubygems'
  require 'dm-core'

  class Payment
    include DataMapper::Resource

    property :id,                 Serial
    property :transaction_id,     Integer
    property :description,       String 
    property :amount,             Integer,  :default => 0, :required => true 

    belongs_to :transaction
    has 1, :item

  end