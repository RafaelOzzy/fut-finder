class Match < ApplicationRecord
  belongs_to :user, :match_maker
  has_many :positions
end
