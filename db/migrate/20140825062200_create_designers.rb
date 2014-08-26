class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :sex
      t.string :prefer_style
      t.string :prefer_household
      t.string :photo
      t.string :location

      t.timestamps
    end
  end
end
