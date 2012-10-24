require 'spec_helper'

describe Tire::Search::Query, '#multi_match' do
  it 'should return a properly structured multi_match query' do
    Tire::Search::Query.new.multi_match('foo').should ==
      { :multi_match => { :query => 'foo' } }
  end

  it 'should take a list of fields to the multi_match query' do
    Tire::Search::Query.new.multi_match('foo', :fields => [:one, :two]).should ==
      { :multi_match => { :query => 'foo', :fields => [:one, :two] } }
  end
end