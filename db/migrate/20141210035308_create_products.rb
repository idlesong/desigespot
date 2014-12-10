class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :catalog
      t.string :tag1
      t.string :tag2
      t.string :tag3

      t.timestamps
    end
  end
end
