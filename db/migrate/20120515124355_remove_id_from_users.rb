class RemoveIdFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :User_ID
      end

  def down
    add_column :users, :User_ID, :integer
  end
end
