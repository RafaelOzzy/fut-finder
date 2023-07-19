class MatchMaker < ApplicationRecord
  has_many :users
  has_one :match
end
