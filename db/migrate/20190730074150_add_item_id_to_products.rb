class AddItemIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :item_id, :integer
  end
end
