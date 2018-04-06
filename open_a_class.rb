class ClassWeWillReOpen < Hash
  def initialize(my_name)
    @my_name = my_name
  end
  def method_in_original_decl()
    puts "Inside #{__method__.to_s} for #{@my_name}"
    puts "  #{self.class.ancestors.reverse.join('::')}##{__method__.to_s}"
  end
end

cwwr0 = ClassWeWillReOpen.new('cwwr0')
cwwr0.method_in_original_decl

class ClassWeWillReOpen
  def method_in_reopen()
    puts "Inside #{__method__.to_s} for #{@my_name}"
    puts "  #{self.class.ancestors.reverse.join('::')}##{__method__.to_s}"
  end
end

cwwr0.method_in_reopen
cwwr1 = ClassWeWillReOpen.new('cwwr1')
cwwr1.method_in_reopen

class ClassWeWillReOpen < Numeric
  def method_in_2nd_reopen()
    puts "Inside #{__method__.to_s} for #{@my_name}"
    puts "  #{self.class.ancestors.reverse.join('::')}##{__method__.to_s}"
  end
end

cwwr0.method_in_2nd_reopen
cwwr1.method_in_2nd_reopen
cwwr2 = ClassWeWillReOpen.new('cwwr2')
cwwr2.method_in_2nd_reopen
