class JobsController < ApplicationController
    def create
      job = Job.create(job_params)
      allUserJobs = User.all.find(params[:user_id]).jobs
        if job.valid?
          render json: {job: job, allUserJobs: allUserJobs}
        else
          render json:{errors: job.errors.full_messages}
        end
    end
    
    def update
        job = Job.find(params[:id])
        allUserJobs = User.find(params[:user_id]).jobs
        if job.update(job_params)
          render json: {job: job, allUserJobs: allUserJobs}
        else
          render json: job.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Job.destroy(params[:id])
        allUserJobs = User.all.find(params[:user_id]).jobs
        render json: allUserJobs
    end
    
    private
    def job_params
        params.require(:job).permit(:id, :user_id, :usaJobs_job_id, :position_id, :job_title, :organization_name, :url, :department, :job_type, :schedule, :description, :requirement, :maximum_pay, :minimum_pay, :pay_period, :employer_strongpoints, :who_may_apply, :hiring_path, :location, :job_posting_date, :application_close_date, :applied_key, :favorite_key)
    end
end
