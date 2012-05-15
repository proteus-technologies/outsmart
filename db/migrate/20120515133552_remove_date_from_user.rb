class RemoveDateFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :creation_date
        remove_column :users, :updated_date
      end

  def down
    add_column :users, :updated_date, :datetime
    add_column :users, :creation_date, :datetime
  end
end
