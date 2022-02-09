class AddCustomFeildsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :visibility, :string
    add_column :articles, :version_note, :string
  end
end
