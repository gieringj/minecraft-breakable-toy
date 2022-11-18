class Api::V1::CreatorsController < ApplicationController
    def show
        creators = Creator.all
        render json: creators
    end
end 