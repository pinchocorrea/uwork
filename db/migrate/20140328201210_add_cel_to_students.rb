class AddCelToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cel, :integer
  end
end
