class CambioNombres < ActiveRecord::Migration
	def change
		change_table :students do |t|
		  t.remove :dispDiaHra
		  t.remove :dispInicio
		  t.remove :dispFin
		  t.string :hobbies
		  t.string :deportes
		  t.rename :Idiomas, :OtrosIdiomas
		end
	end
end