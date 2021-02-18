module Validation
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end

  module ClassMethods
    # attr_accessor :validate
    
    
  end

  module InstanceMethods
    private 

    def valid?
      validate!
      true
    rescue
      false
    end

    def validate!
      raise puts "Name can't be nill" if name == "" || name.nil?
      # raise puts "Number must be 5 simbols" if number.length < 5
      # raise puts "Number has invalid format" if number !~ NUMBER_FORMAT
    end
  end
end