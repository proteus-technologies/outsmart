class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :User_ID
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.boolean :Is_Admin
      t.integer :Solution_ID
      t.integer :Problem_ID
      t.timestamp :creation_date
      t.timestamp :updated_date

      t.timestamps
    end
  end
end
