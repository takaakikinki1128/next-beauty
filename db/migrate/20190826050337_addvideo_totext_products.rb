class AddvideoTotextProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :video, :string
    remove_column :products, :image,:text

  end
end
