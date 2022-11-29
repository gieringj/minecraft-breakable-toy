class Api::V1::CreatorsController < ApplicationController
    def show
        creators = Creator..find(params[:id])
        render json: creators
    end
end 