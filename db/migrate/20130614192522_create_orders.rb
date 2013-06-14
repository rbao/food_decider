class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :item
      t.decimal :price, precision: 8, scale: 2
      t.text :note
      t.references :group, index: true

      t.timestamps
    end
  end
end
