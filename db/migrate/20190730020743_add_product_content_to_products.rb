class AddProductContentToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :style_name, :string
    add_column :products, :shop_name, :string
    remove_column :products, :name,:string
    


  end
end
