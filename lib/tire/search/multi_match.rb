Tire::Search::Query.class_eval do
  def multi_match(value, options={})
    @value = { :multi_match => { :query => value } }
    @value[:multi_match].update(options)
    @value
  end
end