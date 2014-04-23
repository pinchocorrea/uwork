class AddContratocelToStudents < ActiveRecord::Migration
  def change
    add_column :students, :contratoCel, :string
  end
end
