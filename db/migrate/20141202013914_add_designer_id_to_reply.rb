class AddDesignerIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :designer_id, :integer
  end
end
