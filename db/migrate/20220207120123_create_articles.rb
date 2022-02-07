class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :article_id
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :status
      t.string :category
      t.string :tags

      t.timestamps
    end
  end
end
