class AddNivelAlemanToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nivelAleman, :string
  end
end
