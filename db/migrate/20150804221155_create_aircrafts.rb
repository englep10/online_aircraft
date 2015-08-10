class CreateAircrafts < ActiveRecord::Migration
  # wat, how do you manage all of this? remember with migration we want to stick with our MVP,
  # what information is most pertinent to your user.
  def change
    create_table :aircrafts do |t|
      t.references :manufactuer, index: true, foreign_key: true
      t.string :serial_number
      t.string :ask_price
      t.string :contact_company
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_cell_phone
      t.string :contact_fax
      t.string :contact_email
      t.string :contact_website
      t.text :unique_selling_point
      t.string :airframe_hour
      t.string :total_landing
      t.string :engine_type
      t.string :engine_serial_number
      t.string :msp
      t.string :left_engine_hour
      t.string :left_engine_cylce
      t.string :right_engine_hour
      t.string :right_engine_cycle
      t.text :avionic
      t.string :year_painted
      t.text :exterior
      t.text :interior
      t.text :inspection
      t.string :condition
      t.string :registration

      t.timestamps null: false
    end
  end
end
