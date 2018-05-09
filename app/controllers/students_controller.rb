class StudentsController < ApplicationController
	before_action :find_student, only: [:show, :edit, :update, :destroy]

	def index
		@students = Student.all
	end


	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to @student, notice: "The Student record is created!"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @student.update(student_params)
			redirect_to @student, notice: "Student record is updated successfully"
		else
			render 'edit'
		end
	end


	def destroy
		@student.destroy
		redirect_to root_path, notice: "Student record is deleted"
	end
	
	private
	def student_params
	     params.require(:student).permit(:name, :student_number, :faculty)
	end
	def find_student
	     @student = Student.find(params[:id])
	end

end
