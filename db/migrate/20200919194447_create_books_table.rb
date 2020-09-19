class CreateBooksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :language, null: false
      t.integer :year, null: false
      t.integer :pages, null: false
      t.string :country, null: false
      t.string :link, null: false
      t.string :image_link
      t.timestamps
    end
    add_index :books, :title, unique: true
    add_index :books, :link, unique: true
  end
end
