class SetDefaultValuesForColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :part_of_series, :boolean, default: false
    change_column :books, :chapter, :boolean, default: false
  end
end
