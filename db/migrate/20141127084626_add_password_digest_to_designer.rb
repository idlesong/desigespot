class AddPasswordDigestToDesigner < ActiveRecord::Migration
  def change
    add_column :designers, :password_digest, :string
  end
end
