class AddvideoTextToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :video, :text
  end
end
