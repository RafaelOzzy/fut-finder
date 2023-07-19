class MatchMaker < ApplicationRecord
  has_many :users
  has_many :matches
end
