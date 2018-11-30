class AddPictureToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :picture, :string
  end
end
