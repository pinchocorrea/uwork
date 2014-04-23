class AddNivelchinoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nivelChino, :string
  end
end
