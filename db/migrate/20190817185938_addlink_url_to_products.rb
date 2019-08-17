class AddlinkUrlToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :link_url, :string
  end
end
