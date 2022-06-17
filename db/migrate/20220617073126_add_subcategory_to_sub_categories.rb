class AddSubcategoryToSubCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :sub_categories, :sub_category, :string
  end
end
