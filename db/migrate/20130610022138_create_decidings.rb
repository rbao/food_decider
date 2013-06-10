class CreateDecidings < ActiveRecord::Migration
  def change
    create_table :decidings do |t|
      t.string :name
      t.string :identifier

      t.timestamps
    end
  end
end
