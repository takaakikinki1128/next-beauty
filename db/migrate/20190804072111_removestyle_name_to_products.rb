class RemovestyleNameToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cosme_id, :integer
    # add_column :products, :style_name, :string

  end
end
