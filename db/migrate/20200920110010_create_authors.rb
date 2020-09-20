class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :slug, null: false
      t.string :pen_name

      t.timestamps
    end
    add_index :authors, :slug, unique: true
  end
end
