class RenameColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pieces, :type, :style
  end
end
