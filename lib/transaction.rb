require 'rubygems'
require 'dm-core'

class Transaction
  include DataMapper::Resource
  
  property :id,                  Serial
  property :customer_id,         Integer
  property :tax_rate,            Decimal,  :default => 0.0,   :required => true 
  property :complete,            Boolean,  :default => true,  :required => true 
  property :locked,              Boolean,  :default => false, :required => true
  property :created_at,          DateTime
  property :updated_at,          DateTime
  
  has n, :items
  
  def self.sum
    trans = self.all
    sum = 0
    trans.each do |t|
      sum += t.tax_rate
    end
    sum
  end
  
  def self.dump_me
    transactions = self.all
    transactions.each do |transaction|
      puts "id:" +transaction.id.to_s+ " Created At: "+ transaction.created_at.to_s
    end
    return nil
  end
end