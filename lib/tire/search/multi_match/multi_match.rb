module Tire
  module Search
    module MultiMatch
      def multi_match(value, options={})
        @value = { :multi_match => { :query => value } }
        @value[:multi_match].update(options)
        @value
      end
    end
  end
end