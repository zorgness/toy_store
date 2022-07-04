class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.integer :price
      t.boolean :pending, default: true
      t.boolean :validated,default: false
      t.boolean :refused, default: false
      t.references :user, null: false, foreign_key: true
      t.references :toy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
