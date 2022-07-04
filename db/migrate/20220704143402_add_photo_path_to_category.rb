class AddPhotoPathToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :photo_path, :string
  end
end
