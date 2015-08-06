class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :aircraft, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :comment
      t.datetime :created_at
      t.integer :rating

      t.timestamps null: false
    end
  end
end
