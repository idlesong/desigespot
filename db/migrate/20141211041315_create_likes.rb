class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :designer_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
