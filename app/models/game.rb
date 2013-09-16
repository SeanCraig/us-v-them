require 'date'

class Game
  include Mongoid::Document

  field :sport
  field :location
  field :start, type: Time

end
