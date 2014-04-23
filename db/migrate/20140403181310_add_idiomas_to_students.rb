class AddIdiomasToStudents < ActiveRecord::Migration
  def change
    add_column :students, :Idiomas, :string
  end
end
