class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
