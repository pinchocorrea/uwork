class AddSexoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :sexo, :string
  end
end
