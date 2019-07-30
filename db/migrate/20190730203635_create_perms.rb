class CreatePerms < ActiveRecord::Migration[5.2]
  def change
    create_table :perms do |t|
      t.string      :name
      t.text        :text
      t.timestamps
    end
  end
end
