class AddSubcategoryIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :subcategory_id, :integer
  end
end
