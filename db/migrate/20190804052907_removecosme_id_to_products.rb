class RemovecosmeIdToProducts < ActiveRecord::Migration[5.2]
  def up
  end

  def down
    remove_column :products, :cosme_id, :integer
  end
end
