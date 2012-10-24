require "#{File.dirname(__FILE__)}/tire/search/multi_match/multi_match"

Tire::Search::Query.class_eval do
  include Tire::Search::MultiMatch
end