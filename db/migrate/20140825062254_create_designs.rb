class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.string :stage
      t.string :style
      t.string :household
      t.string :author

      t.timestamps
    end
  end
end
