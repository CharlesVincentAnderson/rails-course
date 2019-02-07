class StudentsController < ApplicationController
    #send back form to create
    def new
        @courses = Course.all
    end
    
    #create student
    def create
        student = Student.new
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        student.save
        redirect_to '/students'
    end
    
    #list all students
    def index
        @students = Student.all
    end
    
    #send back form to edit
    def edit
    end
    
    #updates student
    def updates
    end
    
    #delete
    def delete
    end
end
