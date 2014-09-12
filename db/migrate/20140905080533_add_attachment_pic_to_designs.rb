class AddAttachmentPicToDesigns < ActiveRecord::Migration
  def self.up
    change_table :designs do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :designs, :pic
  end
end
