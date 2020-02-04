class EducationsController < ApplicationController
    def index
        educations = Education.all 
        render json: educations
    end
    
    def show
        education = Education.find(params[:id])
        render json: education
    end
    
    def create
        education = Education.create(education_params)
        if education.valid?
          render json: education
        else
          render json:{errors: education.errors.full_messages}
        end
    end
    
    def update
        education = Education.find(params[:id])
        if education.update(education_params)
          render json: education
        else
          render json: education.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Education.destroy(params[:id])
    end
    
    private
    
    def education_params
        params.require(:education).permit(:user_id, :name_of_institution, :degree_or_certificate, :gpa, :start_date, :end_date, :country, :state, :city, :major, :minor)
    end
end
