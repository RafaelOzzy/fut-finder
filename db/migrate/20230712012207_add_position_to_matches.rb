class AddPositionToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :position, foreign_key: true
  end
end
