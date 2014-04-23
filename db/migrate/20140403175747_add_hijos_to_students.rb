class AddHijosToStudents < ActiveRecord::Migration
  def change
    add_column :students, :hijos, :integer
  end
end
