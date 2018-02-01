class RemoveOriginalDateFieldFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :date_read, :datetime
  end
end
