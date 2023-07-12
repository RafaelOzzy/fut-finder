class MatchMaker < ApplicationRecord
  has_many :users, :matches
end
