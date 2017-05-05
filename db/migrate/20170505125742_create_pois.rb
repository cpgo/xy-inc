class CreatePois < ActiveRecord::Migration[5.1]
  def change
    create_table :pois do |t|
      t.integer :x
      t.integer :y
      t.string :name

      t.timestamps
    end
  end
end
