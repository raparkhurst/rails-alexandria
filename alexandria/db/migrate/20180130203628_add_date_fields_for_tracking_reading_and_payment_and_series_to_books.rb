class AddDateFieldsForTrackingReadingAndPaymentAndSeriesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :date_start, :datetime
    add_column :books, :date_end, :datetime
    add_column :books, :date_paid, :datetime
    add_column :books, :part_of_series, :boolean
  end
end
