class Beer < ActiveRecord::Base
  serialize :data, JSON
end
