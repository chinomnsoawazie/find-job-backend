class SkillsController < ApplicationController
    def create
        skill = Skill.create(skill_params)
        userSkills = User.find(params[:user_id]).skills
        if skill.valid?
          render json: userSkills
        else
          render json:{errors: skill.errors.full_messages}
        end
    end
    
    def update
        skill = Skill.find(params[:id])
        userSkills = User.find(params[:user_id]).skills
        if skill.update(skill_params)
          render json: userSkills
        else
          render json: skill.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Skill.destroy(params[:id])
        userSkills = User.find(params[:user_id]).skills
        render json: userSkills
    end
    
      private
    def skill_params
        params.require(:skill).permit(:user_id, :job_id, :description, :proficiency_level)
    end
end
