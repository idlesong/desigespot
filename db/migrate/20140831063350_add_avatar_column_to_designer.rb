class AddAvatarColumnToDesigner < ActiveRecord::Migration
  def self.up
    add_attachment :designers, :avatar
  end

  def self.down
    remove_attachment :designers, :avatar
  end
end
