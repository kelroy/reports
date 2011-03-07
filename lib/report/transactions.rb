module Report
  
  class Transactions < Base
    
    def generate
      if(@start && @finish)
        Transaction.all(:created_at => (@start..@finish))
      else
        Transaction.all
      end
    end

    def dump
      transactions = self.generate
      transactions.each do |transaction|
        puts "id: #{transaction.id.to_s} Created At: #{transaction.created_at.to_s}"
      end
      return nil
    end
  end
end