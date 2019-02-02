class NhlTeamsController < ApplicationController
    def new 
        
    end
    
    def create
        nhl_team = NhlTeam.new
        nhl_team.name = params[:name]
        nhl_team.city = params[:city]
        nhl_team.save
        redirect_to '/nhl_teams'
    end
    
    def index
        @nhl_teams = NhlTeam.all
    end
    
    def edit
        @nhl_team = NhlTeam.find(params[:id])
    end
    
    def update
        nhl_team = NhlTeam.find(params[:id])
        nhl_team.name = params[:name]
        nhl_team.city = params[:city]
        nhl_team.save
        redirect_to '/nhl_teams'
    end
    
    def delete
        nhl_team = NhlTeam.find(params[:id])
        nhl_team.destroy
        redirect_to '/nhl_teams'
    end
end
