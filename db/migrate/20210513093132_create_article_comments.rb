class CreateArticleComments < ActiveRecord::Migration[5.2]
  def change
    create_table :article_comments do |t|
      t.string :name
      t.text :comment
      t.integer :article_id

      t.timestamps
    end
  end
end
