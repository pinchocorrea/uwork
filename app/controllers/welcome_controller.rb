class WelcomeController < ApplicationController
	def index
	  @student = Student.new
		@students = Student.all
		@contact = Contact.new
	end
end
