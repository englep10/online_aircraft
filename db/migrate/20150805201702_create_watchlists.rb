class CreateWatchlists < ActiveRecord::Migration
  def change
    create_table :watchlists do |t|
      t.references :aircraft, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :watchlists, [:aircraft_id, :user_id], :unique => true
  end
end
