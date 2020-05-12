class SearchesController < ApplicationController
    load_and_authorize_resource param_method: :search_params
    def new
        @search = Search.new
        
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end
    
       
    private
    def search_params
        params.require(:search).permit(params[:search])
    end
end
