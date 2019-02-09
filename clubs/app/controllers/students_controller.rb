class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    
    def show
        @student = Student.find(params[:id])
        @clubs = Club.all
    end
    
    def new
        @student = Student.new
    end
    
    def create
        student = Student.new
        student.first_name = params[:student][:first_name]
        student.last_name = params[:student][:last_name]
        student.save
        redirect_to '/students'
    end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        student = Student.find(params[:id])
        student.first_name = params[:student][:first_name]
        student.last_name = params[:student][:last_name]
        student.save
        redirect_to '/students'
    end
    
    def delete
    end
    
    def add_club
        student = Student.find(params[:student_id])
        student_club = StudentClub.new
        student_club.student_id = params[:student_id]
        student_club.club_id = params[:club_id]
        student_club.save!
        redirect_to student_path(student)
    end
end
