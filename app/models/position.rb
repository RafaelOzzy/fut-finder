class Position < ApplicationRecord
  belongs_to :match, :user
end
