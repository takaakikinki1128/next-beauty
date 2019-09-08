class RemovetextToitems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :text, :text
    remove_column :items, :image, :string
    remove_column :perms, :text, :text
    remove_column :colors, :text, :text



  end
end
