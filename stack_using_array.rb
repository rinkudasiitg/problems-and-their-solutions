#stack--array

class Stack

  def initialize
		@stack = []
	end
	
	def push(x)
		@stack.push x
	end
	
	def pop
		@stack.pop
	end
	
	def top
		@stack.last
	end
	
	def is_empty?
		@stack.empty?
	end


end


def parentheses_match(str)
	stack = Stack.new
	lsym = "{[(<"
	rsym = "}])>"
	str.each_byte do |byte|
		sym = byte.chr
		if lsym.include? sym
			stack.push(sym)
		elsif rsym.include? sym
			top = stack.top
			if lsym.index(top) != rsym.index(sym)
				return false
			else
				stack.pop
			end
		end
	end
	return stack.is_empty?
end

#str_arr = []

#while((ch=gets.chomp) !="") do
	
	# str_arr.push(ch)

#end

#p str_arr

#str_arr.each do |s|
 #p parentheses_match(s)
#end

#Unit Testing----

require 'test/unit' #step1

class StackTest < Test::Unit::TestCase #step2

#step3
  def test_initial_stack_empty #step4
    assert(true == Stack.new.is_empty?) #step5 -- assertion is that initial stack is empty
    assert_equal(false,Stack.new.is_empty?)
  end
  
end
