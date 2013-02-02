class Env
    def self.model(controller_name)
      controller_name.classify.constantize
    end
    
    def self.model_name(controller_name)
      controller_name.classify
    end
    
    def self.model_string(controller_name)
      controller_name.classify.downcase
    end
end