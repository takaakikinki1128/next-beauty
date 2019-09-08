class AddStyleNameToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stylest_name, :string
  end
end
