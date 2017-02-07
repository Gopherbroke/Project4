class AddColumnToPieces < ActiveRecord::Migration[5.0]
  def change
    add_column :pieces, :image_url, :string
  end
end
