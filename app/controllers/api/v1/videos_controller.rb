class Api::V1::VideosController < ApplicationController
    def index
        # \user = current_user
        render json: Video.all
        # { videos: Video.all, user: current_user}
    end
    def show
        
        render json: Video.find(params[:id])
    end
end 
