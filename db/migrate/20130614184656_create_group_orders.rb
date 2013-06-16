class CreateGroupOrders < ActiveRecord::Migration
  def change
    create_table :group_orders do |t|
      t.string :name
      t.decimal :tax_rate, precision: 8, scale: 2, default: 0.13
      t.text :message
      t.references :restaurant
      
      t.timestamps
    end
  end
end
