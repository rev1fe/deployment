class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :imageUrl
      t.text :url
      t.string :genre
      t.timestamps
    end
  end
end
