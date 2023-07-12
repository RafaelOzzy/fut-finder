class AddUserToMatchMaker < ActiveRecord::Migration[7.0]
  def change
    add_reference :match_makers, :user, foreign_key: true
  end
end
