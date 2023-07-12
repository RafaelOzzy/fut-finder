class AddUserToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :user, foreign_key: true
  end
end
