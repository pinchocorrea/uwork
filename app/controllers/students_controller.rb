class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
		@student = Student.create(student_params)
		if @student.save!
			redirect_to welcome_index_path, :notice => "Ya te tenemos en nuestros registros!, te contactaremos luego"
		else
			redirect_to welcome_index_path, :error => "Ups! tenemos un problema, intentalo nuevamente."
		end
	end

	def student_params
		params.require(:student).permit(:firstname, :lastname, :secondlastname, :rut, :fechaNac, :comunaId, :colegioId, :universidadId, :carreraId, :fechaIngreso, :duracion, :fechaEgreso, :nivelIngles, :dispInicio, :dispFin, :dispDiaHra, :experiencia, :experiencias, :rentaHora, :sectorId, :auto, :created_at, :updated_at, :email, :cel, :sexo, :empresaCel, :contratoCel, :nivelAleman, :nivelPortugues, :nivelFrances, :nivelChino, :hijos, :marcaAuto, :anioAuto)
	end
	#:Idiomas, :modeloAuto, 

	def show
		@students = Student.find(:all)
	end

	def index
		@students = Student.find(:all)
    	respond_to do |format|
      		format.html
      		format.xls { send_data Student.to_csv(@students, col_sep: "\t") }
    	end
	end
end
