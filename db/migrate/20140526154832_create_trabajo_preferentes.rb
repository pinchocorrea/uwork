class CreateTrabajoPreferentes < ActiveRecord::Migration
  def change
    create_table :trabajo_preferentes do |t|
      t.integer :cod
      t.string :nombre

      t.timestamps
    end
  end
end
