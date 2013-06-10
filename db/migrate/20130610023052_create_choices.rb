class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :decision
      t.references :restaurant
      t.integer :points, default: 0

      t.timestamps
    end

    add_index :choices, :decision_id
  end
end
