class RemoveImageToItems < ActiveRecord::Migration[5.2]
  def up
  end

  def down
    remove_column :items, :image, :string
  end
end
