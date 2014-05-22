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
		params.require(:student).permit(:created_at, :updated_at, :firstname, :lastname, :secondlastname, :rut, :fechaNac, :comunaId, :hijos, :colegioId, :universidadId, :carreraId, :fechaIngreso, :duracion, :fechaEgreso, :experiencia, :experiencias, :rentaHora, :sectorId, :auto, :email, :cel, :sexo, :empresaCel, :contratoCel,  :nivelIngles, :nivelAleman, :nivelPortugues, :nivelFrances, :nivelChino, :OtrosIdiomas, :marcaAuto, :anioAuto, :hobbies, :deportes)
	end
	#:modeloAuto, , :hobbies, :deportes

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
