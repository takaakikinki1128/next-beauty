class RemovenameToproducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :name, :string
    add_column :products, :title, :string
  end
end
