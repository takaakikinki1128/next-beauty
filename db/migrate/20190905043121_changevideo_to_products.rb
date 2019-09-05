class ChangevideoToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :video, :string
  end
end
