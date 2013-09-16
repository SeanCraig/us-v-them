require './lib/mongoid/multi_parameter_attributes'
class Game
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  
  field :sport
  field :location
  field :start

end
