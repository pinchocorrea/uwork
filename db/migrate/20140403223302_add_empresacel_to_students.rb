class AddEmpresacelToStudents < ActiveRecord::Migration
  def change
    add_column :students, :empresaCel, :string
  end
end
