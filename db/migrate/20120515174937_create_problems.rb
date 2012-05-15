class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.string :text_description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
