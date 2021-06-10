class CreaturesController < ApplicationController

    def index
        creatures = Creature.all
        render json: CreatureSerializer.new(creatures)
    end

    def create
        creature = Creature.new(creature_params)
        if creature.save
            render json: CreatureSerializer.new(creature)
        else
            render json: {errors: creature.errors.full_messages}
        end
    end

    def edit
        creature = Creature.find(params[:id])
    end

    def update
        creature = Creature.update(creature_params)
        if creature.save
            render json: CreatureSerializer(creature)
        else
            render json: {erros: creature.errors.full_messages}
        end
    end

    def destroy
        creature = Creature.find(params[:id])
        creature.destroy
    end

    def show
        creature = Creature.find(params[:id])
        render json: creature
    end

    private

    def creature_params
        params.require(:creature).permit(:name, :image, :description, :likes)
    end

end
