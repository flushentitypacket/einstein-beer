class Beer < ActiveRecord::Base
  serialize :data, JSON
  fuzzily_searchable :name
end
