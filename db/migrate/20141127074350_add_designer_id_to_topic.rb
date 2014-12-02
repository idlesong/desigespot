class AddDesignerIdToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :designer_id, :integer
  end
end
