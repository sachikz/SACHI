class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :favorites, :created_at
  end
end
