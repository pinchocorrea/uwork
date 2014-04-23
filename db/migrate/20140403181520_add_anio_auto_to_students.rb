class AddAnioAutoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :anioAuto, :string
  end
end
