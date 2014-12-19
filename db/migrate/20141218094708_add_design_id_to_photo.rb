class AddDesignIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :design_id, :integer
  end
end
