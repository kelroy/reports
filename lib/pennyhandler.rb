class PennyHandler
   attr_accessor :amountOfPennies
 
  def initialize(amountOfPennies)
    @amountOfPennies = amountOfPennies
  end
  
  def toDollers
	if @amountOfPennies >0
		@amountOfPennies/100.0
	else
		0.0
	end
  end
  
  def addPenniesTo(amountOfPennies)
	 @amountOfPennies += amountOfPennies
  end

end
