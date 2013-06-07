class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :menu
      t.string :address
      t.string :phone
      t.string :site
      t.string :yelp

      t.timestamps
    end
  end
end
