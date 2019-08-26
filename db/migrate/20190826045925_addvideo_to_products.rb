class AddvideoToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :video,:string

  end
end
