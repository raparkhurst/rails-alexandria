class SetDateStartToDefaultTime < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :date_start, :datetime, default: Time.now()
  end
end
