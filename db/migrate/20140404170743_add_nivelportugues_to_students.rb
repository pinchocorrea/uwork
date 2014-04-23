class AddNivelportuguesToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nivelPortugues, :string
  end
end
