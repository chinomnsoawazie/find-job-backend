class SkillsController < ApplicationController
    def index
        skills = Skill.all 
        render json: skills
    end
    
    def show
        skill = Skill.find(params[:id])
        render json: skill
    end
    
    def create
        skill = Skill.create(skill_params)
        if skill.valid?
          render json: skill
        else
          render json:{errors: skill.errors.full_messages}
        end
    end
    
    def update
        skill = Skill.find(params[:id])
        if skill.update(skill_params)
          render json: skill
        else
          render json: skill.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Skill.destroy(params[:id])
    end
    
      private
    
    def skill_params
        params.require(:skill).permit(:job_id, :description, :proficiency_level)
    end
end
