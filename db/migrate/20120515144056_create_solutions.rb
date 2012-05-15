class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :solution_file_url
      t.string :text_description
      t.integer :user_ID
      t.integer :problem_ID

      t.timestamps
    end
  end
end
