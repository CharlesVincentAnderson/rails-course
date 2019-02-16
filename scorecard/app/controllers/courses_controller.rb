class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    
    def new
        @course = Course.new
    end
    
    def create
        course = Course.new
        course.name = params[:course][:name]
        course.num_holes = params[:course][:num_holes]
        course.hole1_par = params[:course][:hole1_par]
        course.hole2_par = params[:course][:hole2_par]
        course.hole3_par = params[:course][:hole3_par]
        course.hole4_par = params[:course][:hole4_par]
        course.hole5_par = params[:course][:hole5_par]
        course.hole6_par = params[:course][:hole6_par]
        course.hole7_par = params[:course][:hole7_par]
        course.hole8_par = params[:course][:hole8_par]
        course.hole9_par = params[:course][:hole9_par]
        course.hole10_par = params[:course][:hole10_par]
        course.hole11_par = params[:course][:hole11_par]
        course.hole12_par = params[:course][:hole12_par]
        course.hole13_par = params[:course][:hole13_par]
        course.hole14_par = params[:course][:hole14_par]
        course.hole15_par = params[:course][:hole15_par]
        course.hole16_par = params[:course][:hole16_par]
        course.hole17_par = params[:course][:hole17_par]
        course.hole18_par = params[:course][:hole18_par]
        course.save
        redirect_to courses_path
    end
    
    def edit
        @course = Course.find(params[:id])
    end
    
    def update
        course = Course.find(params[:id])
        course.name = params[:course][:name]
        course.num_holes = params[:course][:num_holes]
        course.hole1_par = params[:course][:hole1_par]
        course.hole2_par = params[:course][:hole2_par]
        course.hole3_par = params[:course][:hole3_par]
        course.hole4_par = params[:course][:hole4_par]
        course.hole5_par = params[:course][:hole5_par]
        course.hole6_par = params[:course][:hole6_par]
        course.hole7_par = params[:course][:hole7_par]
        course.hole8_par = params[:course][:hole8_par]
        course.hole9_par = params[:course][:hole9_par]
        course.hole10_par = params[:course][:hole10_par]
        course.hole11_par = params[:course][:hole11_par]
        course.hole12_par = params[:course][:hole12_par]
        course.hole13_par = params[:course][:hole13_par]
        course.hole14_par = params[:course][:hole14_par]
        course.hole15_par = params[:course][:hole15_par]
        course.hole16_par = params[:course][:hole16_par]
        course.hole17_par = params[:course][:hole17_par]
        course.hole18_par = params[:course][:hole18_par]
        course.save
        redirect_to courses_path
    end
    
    def delete
        dish = Dish.find(params[:id])
        dish.delete
        redirect_to course_path
    end
end
