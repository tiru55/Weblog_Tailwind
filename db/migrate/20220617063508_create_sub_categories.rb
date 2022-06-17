class CreateSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_categories do |t|
      t.string :definition
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
