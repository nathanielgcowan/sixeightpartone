class SkillsController < ApplicationController
    def index
        skills = Skills.all
        render json: skills
    end

    def create
        skill = Skill.new(skill_params)
        if skill.save
            render json: skill
        else
            rendr json: {erros: Skill.errors.full_messages}
        end
    end

    def destroy
        skill = Skill.find(params[:id])
        skill.destroy
    end
    
    private

    def skill_params
        params.require(:skill).permit(:name, :creature_id)
    end
end
