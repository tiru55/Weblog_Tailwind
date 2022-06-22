class AddSubCategoryToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :sub_category, :string
  end
end
