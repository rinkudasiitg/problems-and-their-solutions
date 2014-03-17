# OR and AND operator using ternary operator with unit testing

def testOR(a,b)
  #return ((b)? b : a)
	return ((a)? a : b)
end

def testAND(a,b)
  #return ((b)? a : b)
	return ((a)? b : a)
end


#Unit Testing----

require 'test/unit

class ORTest < Test::Unit::TestCase

  def test_equality_or #step4
		assert_equal((false | false),testOR(false,false)) 
		assert_equal((false | true),testOR(false,true)) 
		assert_equal((true | false),testOR(true,false))
		assert_equal((true | true),testOR(true,true))    
  end

	def test_equality_and #step4
		assert_equal((false & false),testAND(false,false))   
		assert_equal((false & true),testAND(false,true))   
		assert_equal((true & false),testAND(true,false))   
		assert_equal((true & true),testAND(true,true))    
  end
  
end
