class AddNivelfrancesToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nivelFrances, :string
  end
end
