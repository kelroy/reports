class Currency
  
  def self.to_dollars(pennies)
    return pennies.to_f / 100
  end
  
  def self.to_pennies(dollars)
    return (dollars * 100).to_i
  end
  
  def self.to_s(pennies)
    return "$#{"%.2f" % self.to_dollars(pennies)}"
  end
end