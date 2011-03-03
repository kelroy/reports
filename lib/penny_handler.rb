class PennyHandler
   attr_accessor :amount_of_pennies
 
  def initialize(amount_of_pennies=0)
    @amount_of_pennies = amount_of_pennies
  end
  
  def to_dollers
	  if @amount_of_pennies >0
	    @amount_of_pennies/100.0     
	  else
		  0.00
	  end
  end
  
  def add_pennies_to(amount_of_pennies)
	 @amount_of_pennies += amount_of_pennies
  end
  
  def to_s
    return "$"+(self.to_dollers).to_s
  end
end
