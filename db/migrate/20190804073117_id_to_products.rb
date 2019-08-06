class IdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stylegenre_id, :integer

  end
end
