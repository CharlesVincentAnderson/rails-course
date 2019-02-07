class PlayersController < ApplicationController
    def new 
        @nhl_teams = NhlTeam.all
    end
    
    def create
        player = Player.new
        player.first_name = params[:first_name]
        player.last_name = params[:last_name]
        player.number = params[:number]
        player.team_id = params[:team_id]
        if player.save
            redirect_to '/players'
        else
            raise player.errors.full_messages.inspect
        end 
        
    end
    
    def index
        @players = Player.all
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    def delete
        
    end
end
