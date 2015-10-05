class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q"
      def #{attr_name}=(input)
        #puts \"test\"
        @#{attr_name}_history ||= Array.new()
        @#{attr_name}_history << #{attr_name}
        @#{attr_name} = input
        #puts @#{attr_name}
        
      end"
  end
end

class TesterClass
  attr_accessor_with_history :testvar
  #attr_accessor :testvar
  def initialize(testvar)
    @testvar = testvar
  end
end

#tc = TesterClass.new(0)
#puts tc.testvar.to_s #=> "0"
#tc.testvar = "testing"
#puts "#{tc.testvar} 2" # => "testing 2"
#puts tc.testvar_history # => arrayish
#tc.testvar = "testing some more"
#puts tc.testvar_history