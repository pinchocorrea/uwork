class ChangeTextLimit < ActiveRecord::Migration
  def change
  	change_column :students, :hobbies, :text, :limit => nil
    change_column :students, :deportes, :text, :limit => nil
    change_column :students, :sectorId, :text, :limit => nil
    change_column :students, :experiencias, :text, :limit => nil
  end
end
