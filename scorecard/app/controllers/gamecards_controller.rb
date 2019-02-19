class GamecardsController < ApplicationController
    def new
        @courses = Course.all
        @users = User.all
    end
    
    def create
        @gamecard = Gamecard.new
        @gamecard.course_id = params[:gamecard][:course_id]
        @gamecard.player1_id = params[:gamecard][:player1_id]
        @gamecard.player2_id = params[:gamecard][:player2_id]
        @gamecard.player3_id = params[:gamecard][:player3_id]
        @gamecard.player4_id = params[:gamecard][:player4_id]
        @gamecard.score1 = 0
        @gamecard.score2 = 0
        @gamecard.score3 = 0
        @gamecard.score4 = 0
        @gamecard.score5 = 0
        @gamecard.score6 = 0
        @gamecard.score7 = 0
        @gamecard.score8 = 0
        @gamecard.score9 = 0
        @gamecard.score10 = 0
        @gamecard.score11 = 0
        @gamecard.score12 = 0
        @gamecard.score13 = 0
        @gamecard.score14 = 0
        @gamecard.score15 = 0
        @gamecard.score16 = 0
        @gamecard.score17 = 0
        @gamecard.score18 = 0
        @gamecard.save
        redirect_to gamecard_path(@gamecard)
        
    end
    
    def show
        
    end
end
