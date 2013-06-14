class CreateGroupOrders < ActiveRecord::Migration
  def change
    create_table :group_orders do |t|
      t.string :name
      t.text :message
      t.references :restaurant
      
      t.timestamps
    end
  end
end
