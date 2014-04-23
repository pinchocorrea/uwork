class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :secondlastname
      t.string :rut
      t.string :fechaNac
      t.string :comunaId
      t.string :colegioId
      t.string :universidadId
      t.string :carreraId
      t.integer :fechaIngreso
      t.integer :duracion
      t.integer :fechaEgreso
      t.string :nivelIngles
      t.string :dispInicio
      t.string :dispFin
      t.string :dispDiaHra
      t.string :experiencia
      t.string :experiencias
      t.integer :rentaHora
      t.string :sectorId
      t.string :auto

      t.timestamps
    end
  end
end
