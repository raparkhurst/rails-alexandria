class AddFieldsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :date_read, :datetime
  end
end
