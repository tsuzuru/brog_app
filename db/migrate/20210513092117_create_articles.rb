class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :image_id
      t.integer :category_id

      t.timestamps
    end
  end
end
