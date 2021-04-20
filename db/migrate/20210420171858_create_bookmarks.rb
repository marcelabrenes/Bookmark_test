class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.references :kind, foreign_key: true
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
