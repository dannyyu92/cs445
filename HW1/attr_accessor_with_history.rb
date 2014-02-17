#Danny Yu, dyu6@binghamton.edu

class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(element)
        if !defined? @#{attr_name}
          @#{attr_name}_history = []
        end
        @#{attr_name}_history << @#{attr_name}
        @#{attr_name} = element
      end
    }
  end
end
