class AddDescriptionAndPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :price, :decimal
  end
end
