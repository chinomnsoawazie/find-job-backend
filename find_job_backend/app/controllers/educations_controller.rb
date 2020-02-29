class EducationsController < ApplicationController
    def create
        education = Education.create(education_params)
        userEducations= User.find(params[:user_id]).educations
        if education.valid?
          render json: userEducations
        else
          render json:{errors: education.errors.full_messages}
        end
    end
    
    def update
        education = Education.find(params[:id])
        userEducations= User.find(params[:user_id]).educations
        if education.update(education_params)
          render json: userEducations
        else
          render json: education.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Education.destroy(params[:id])
        userEducations= User.find(params[:user_id]).educations
        render json: userEducations
    end
    
    private
    def education_params
        params.require(:education).permit(:id, :user_id, :name_of_institution, :degree_or_certificate, :complete_status, :gpa, :start_date, :end_date, :country, :state, :city, :major, :minor, :complete_status)
    end
end