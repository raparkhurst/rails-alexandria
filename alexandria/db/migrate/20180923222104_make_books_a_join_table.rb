class MakeBooksAJoinTable < ActiveRecord::Migration[5.1]
  def up
    add_column :books, :user_id, :integer
  end

  def down
    remove_column :books, :user_id
  end
end
