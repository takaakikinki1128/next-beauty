class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string      :name
      t.text        :text
      t.string      :video
      t.string      :shop_name
      t.integer     :user_id
      t.integer     :item_id
      t.integer     :color_id
      t.integer     :perm_id
      t.string      :cosme
      t.integer     :stylegenre_id
      t.string      :link_url


      t.timestamps
    end
  end
end
