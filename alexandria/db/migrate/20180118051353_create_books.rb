class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.boolean :chapter
      t.string :description
      t.boolean :paid

      t.timestamps
    end
  end
end
