class SetDefaultValuesForPaidColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :paid, :boolean, default: false
  end
end
