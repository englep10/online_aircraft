class AddSlugToManufactuer < ActiveRecord::Migration
  def change
    add_column :manufactuers, :slug, :string
  end
end
