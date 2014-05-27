class CreateExpLaborals < ActiveRecord::Migration
  def change
    create_table :exp_laborals do |t|
      t.integer :cod
      t.string :nombre

      t.timestamps
    end
  end
end
