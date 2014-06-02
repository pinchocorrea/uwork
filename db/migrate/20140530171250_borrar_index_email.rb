class BorrarIndexEmail < ActiveRecord::Migration
  def change
  	remove_index :students, :email
  end
end
