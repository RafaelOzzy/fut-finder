class Position < ApplicationRecord
  belongs_to :match
  belongs_to :user
end
