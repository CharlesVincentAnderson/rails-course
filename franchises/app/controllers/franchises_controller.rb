class FranchisesController < ApplicationController
    def new
        
    end
    
    def create
        franchise = Franchise.new
        franchise.name = params[:name]
        franchise.city = params[:city]
        franchise.save
        redirect_to '/franchises'
    end
    
    
    def index
        @franchises = Franchise.all
    end
    
    def edit
        @franchise = Franchise.find(params[:id])
    end
    
    def update
        franchise = Franchise.find(params[:id])
        franchise.name = params[:name]
        franchise.city = params[:city]
        franchise.save
        redirect_to '/franchises'
    end
    
    def delete
        franchise = Franchise.find(params[:id])
        franchise.destroy
        redirect_to '/franchises'
    end
    
    def show
       @franchise = Franchise.find(params[:id]) 
    end

end
