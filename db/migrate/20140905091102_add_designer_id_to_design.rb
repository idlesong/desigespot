class AddDesignerIdToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :designer_id, :integer
  end
end
