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
  has n, :lines
  
  def sum
    lines = self.lines
    sum = 0
    lines.each do |line|
      sum += line.price * line.quantity
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