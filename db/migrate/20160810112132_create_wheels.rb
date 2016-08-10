class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.string :name
      t.string :title
      t.references :brand, index: true, foreign_key: true
      t.integer :price
      t.integer :radius
      t.references :side, index: true, foreign_key: true
      t.integer :width
      t.integer :height

      t.timestamps null: false
    end
  end
end
