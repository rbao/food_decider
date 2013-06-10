class CreatePotentialDecisions < ActiveRecord::Migration
  def change
    create_table :potential_decisions do |t|
      t.references :deciding
      t.references :restaurant
      t.integer :point, default: 0

      t.timestamps
    end

    add_index :potential_decisions, :deciding_id
  end
end
