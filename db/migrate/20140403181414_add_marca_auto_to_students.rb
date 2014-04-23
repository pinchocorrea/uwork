class AddMarcaAutoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :marcaAuto, :string
  end
end
