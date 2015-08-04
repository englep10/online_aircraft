class CreateManufactuers < ActiveRecord::Migration
  def change
    create_table :manufactuers do |t|
      t.string :category
      t.string :manufactuer
      t.string :aircraft_model
      t.string :range

      t.timestamps null: false
    end
  end
end
