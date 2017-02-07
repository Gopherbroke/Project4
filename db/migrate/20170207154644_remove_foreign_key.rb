class RemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :comments, column: :user_id
  end
end
