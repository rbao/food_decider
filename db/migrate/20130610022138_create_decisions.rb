class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string :name
      t.string :identifier

      t.timestamps
    end
  end
end
