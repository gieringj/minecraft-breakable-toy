class Api::V1::CreatorsIndexController < ApplicationController
    def index
        creators = Creator.all
        render json: vidoes
    end
end 