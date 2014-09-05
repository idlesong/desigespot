class AddDesignIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :design_id, :integer
  end
end
