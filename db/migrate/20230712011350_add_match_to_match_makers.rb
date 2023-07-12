class AddMatchToMatchMakers < ActiveRecord::Migration[7.0]
  def change
    add_reference :match_makers, :match, foreign_key: true
  end
end
