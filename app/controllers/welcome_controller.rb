class WelcomeController < ApplicationController
	def index
	    @student = Student.new
		@students = Student.find(:all)
		@contact = Contact.new

	end
end
