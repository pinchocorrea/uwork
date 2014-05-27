class CambioStringToText < ActiveRecord::Migration
  def change
    change_column :students, :hobbies, :text
    change_column :students, :deportes, :text
    change_column :students, :sectorId, :text
    change_column :students, :experiencias, :text
  end
end
