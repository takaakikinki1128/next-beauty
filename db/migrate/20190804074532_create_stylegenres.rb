class CreateStylegenres < ActiveRecord::Migration[5.2]
  def change
    create_table :stylegenres do |t|
      t.string    :name
      t.timestamps
    end
  end
end
