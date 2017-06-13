class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}= attr_value
      
        # if attr_name has no history
        # create an attr_name history in an empty array
        if @#{attr_name}_history.nil?
          @#{attr_name}_history = []
        end
        
        # push the attr_name onto its history array
        @#{attr_name}_history.push(@#{attr_name})
      
        # give attr name a value
        @#{attr_name} = attr_value
        
        return @#{attr_name}_history
      end
    }
  end
end
