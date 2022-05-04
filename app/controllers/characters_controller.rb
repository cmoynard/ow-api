class CharactersController < ApplicationController
    #crud methods
    def index
        @characters = Character.all
        render :json => @characters
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(character_params)
        if @character.save
            redirect_to @character
        else
            render 'new'
        end
    end

    private
    def character_params
        params.require(:character).permit(:name, :role, :desc, :logo_image, :fullbody_image, :hp, :shield, :weapon1, :weapon2, :capacity1, :capacity2, :capacity3, :capacity4, :ultimate, :passive1, :passive2, :passiverole)
    end
end
