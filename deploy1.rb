# deploy1.rb

class Whse

  attr_accessor :whsecd
  attr_accessor :whsename
  
  def initialize(s_whsecd, s_whsename)
   @whsecd = s_whsecd
   @whsename = s_whsename
  end 
  
end  

class Prod

  attr_accessor :prodcd
  attr_accessor :prodname
  
  attr_accessor :whse
  attr_accessor :prod
  
  attr_accessor :invqty
  
  def initialize(s_prodcd, s_prodname)
   @prodcd = s_prodcd
   @prodname = s_prodname
   @whseprod = s_whseprod
  end 
end

class WhseProd

  attr_accessor :whsecd
  attr_accessor :prodcd
  
  attr :o_prod
  
  def initialize(s_whsecd, s_prodcd)
   @whsecd = s_whsecd
   @prodcd = s_prodcd
  end
end  

class Main

  attr :h_prods, :h_whseprods
  
  def initialize()
   @h_prods = {}
   @h_whseprods ={}
   end
  
  def run()
    add_prod('101', '2LIT MANGO')
	add_prod('102', '2LIT GUAVA')
	add_prod('103', '2LIT GRAPE')
	@h_prods.each{ |s_prodcd, o_prod|
	  puts "Prod is #{o_prod.prodcd} #{o_prod.prodname}"
	}
	add_whseprod('ALLEN', 'Allen') # => ALLEN|101
	add_whseprod('JAMES', 'James')
	end
	
  def add_whse(s_whsecd, s_whsename)
    
  end
   
  def add_prod(s_prodcd, s_prodname)
    o_prod = Prod.new(s_prodcd, s_prodname)
    @h_prods[o_prod.prodcd] = o_prod
  end	
  
  def add_whseprod(s_whsecd, s_prodcd)
    o_whseprod = WhseProd.new(s_whsecd, s_prodcd)
	s_whseprod = "#(o_whse
	
	s_whseprod.prod =@h_prods[o_whseprod.prodcd]
	o_whseprod.prod.whseprods  
    
  
end  

Main.new().run()

  