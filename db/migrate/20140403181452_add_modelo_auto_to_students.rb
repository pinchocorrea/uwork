class AddModeloAutoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :modeloAuto, :string
  end
end
