class AddDescriptionToToy < ActiveRecord::Migration[6.1]
  def change
    add_column :toys, :description, :string
  end
end
