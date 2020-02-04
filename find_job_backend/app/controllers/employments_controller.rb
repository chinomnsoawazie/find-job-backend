class EmploymentsController < ApplicationController
    def index
        employments = Employment.all 
        render json: employments
    end
    
    def show
        employment = Employment.find(params[:id])
        render json: employment
    end
    
    def create
        employment = Employment.create(employment_params)
        if employment.valid?
          render json: employment
        else
          render json:{errors: employment.errors.full_messages}
        end
    end
    
    def update
        employment = Employment.find(params[:id])
        if employment.update(employment_params)
          render json: employment
        else
          render json: employment.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Employment.destroy(params[:id])
    end
    
    private
    
    def employment_params
        params.require(:employment).permit(:user_id, :company_name, :job_title, :start_month, :start_year, :end_month, :end_year, :duties, :country, :state, :city, :currently_work_here)
    end
end
