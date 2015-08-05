class AddAttachmentImageToAircrafts < ActiveRecord::Migration
  def self.up
    change_table :aircrafts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :aircrafts, :image
  end
end
