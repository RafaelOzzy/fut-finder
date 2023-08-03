class MatchMaker < ApplicationRecord
  has_many :users
  belongs_to :match
end
