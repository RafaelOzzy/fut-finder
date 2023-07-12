class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.datetime :datetime
      t.string :address
      t.integer :price
      t.boolean :bbq
      t.boolean :goalkeaper
      t.string :field_type

      t.timestamps
    end
  end
end
