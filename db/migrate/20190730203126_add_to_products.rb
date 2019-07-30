class AddToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :color_id, :integer
    add_column :products, :perm_id, :integer
    add_column :products, :cosme_id, :integer
    add_column :products, :stylest_name, :string

  end
end
