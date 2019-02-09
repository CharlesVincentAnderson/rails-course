class ClubsController < ApplicationController
    def index
        @clubs = Club.all
    end

    def show
        @club = Club.find(params[:id])
    end
    
    def new
        @club = Club.new
    end
    
    def create
        club = Club.new
        club.name = params[:club][:name]
        club.description = params[:club][:description]
        club.save
        redirect_to '/clubs'
    end
    
    def edit
        @club = Club.find(params[:id])
    end
    
    def update
        club = Club.find(params[:id])
        club.name = params[:club][:name]
        club.description = params[:club][:description]
        club.save
        redirect_to '/clubs'
    end
    
    def delete
    end
end
