class ReportGenerator
  attr_accessor :transactions
  
  def initialize(transactions = nil)
    @transactions = transactions
  end
  
  def load
	  @transactions = Transaction.all
  end
  
  def load_by_range(starting_timestamp,ending_timestamp)
      puts starting_timestamp
      @transactions = (Transaction.all(:created_at.gte => starting_timestamp) | Transaction.all(:created_at.lte => ending_timestamp))
      return nil
  end
  
  def dump
    transactions.each do |transaction|
      puts "id:" +transaction.id.to_s+ " Created At: "+ transaction.created_at.to_s
    end
    return nil
  end
end