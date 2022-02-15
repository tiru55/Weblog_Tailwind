class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :category
      t.string :tags
      t.integer :user_id
      t.integer :visibility

      t.timestamps
    end
  end
end
