class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :inventory
      t.string :picture
      t.string :size

      t.timestamps null: false
    end
  end
end
