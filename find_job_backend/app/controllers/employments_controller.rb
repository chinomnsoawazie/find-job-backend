class EmploymentsController < ApplicationController
    def create
        employment = Employment.create(employment_params)
        userEmployments = User.find(params[:user_id]).employments
        if employment.valid?
          render json: userEmployments
        else
          render json:{errors: employment.errors.full_messages}
        end
    end
    
    def update
        employment = Employment.find(params[:id])
        userEmployments = User.find(params[:user_id]).employments
        if employment.update(employment_params)
          render json: userEmployments
        else
          render json: employment.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Employment.destroy(params[:id])
        userEmployments = User.find(params[:user_id]).employments
        render json: userEmployments
    end
    
    private
    def employment_params
        params.require(:employment).permit(:id, :user_id, :company_name, :job_title, :start_date, :end_date, :duties, :country, :state, :city, :currently_work_here)
    end
end
