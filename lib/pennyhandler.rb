class PennyHandler
   attr_accessor :amountOfPennies
 
  def initialize(amountOfPennies)
    @amountOfPennies = amountOfPennies
  end
  
  def initialize()
    @amountOfPennies = 0;
  end
  
  def toDollers
	if @amountOfPennies >0
		@amountOfPennies/100.0
	else
		0.00
	end
  end
  
  def addPenniesTo(amountOfPennies)
	 @amountOfPennies += amountOfPennies
  end

end
