class RemoveStyleNameToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :style_name,:string
    remove_column :products, :cosme_id,:integer
  end
end
