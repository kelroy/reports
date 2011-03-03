module Report
  
  class Base
    
    def initialize(start=nil, finish=nil)
      @start = start
      @finish = finish
    end
    
    def generate
      return nil # Overridden by subclass
    end
  end
end