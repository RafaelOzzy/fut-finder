class Match < ApplicationRecord
  belongs_to :user
  belongs_to :match_maker

  has_many :positions
end
