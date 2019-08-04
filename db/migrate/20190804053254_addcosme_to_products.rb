class AddcosmeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cosme, :string

  end
end
