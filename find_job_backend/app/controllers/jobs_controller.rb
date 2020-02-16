class JobsController < ApplicationController

  
    def index

        jobs = Job.all.select{|job| job.user_id == params[:user_id].to_i}
        # byebug
        render json: jobs
    end
    
    def show
        job = Job.find(params[:id])
        render json: job
    end
    
    def create
        job = Job.create(job_params)
        allJobs = Job.all
        if job.valid?
          render json: {job: job, allJobs: allJobs}
        else
          render json:{errors: job.errors.full_messages}
        end
    end
    
    def update
        job = Job.find(params[:id])
        allJobs = Job.all
        if job.update(job_params)
          render json: {job: job, allJobs: allJobs}
        else
          render json: job.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Job.destroy(params[:id])
    end
    
    private
    
    def job_params
        params.require(:job).permit(:user_id, :usaJobs_job_id, :position_id, :job_title, :organization_name, :url, :department, :job_type, :schedule, :description, :requirement, :maximum_pay, :minimum_pay, :pay_period, :employer_strongpoints, :who_may_apply, :hiring_path, :location, :job_posting_date, :application_close_date, :applied_key, :favorite_key)
    end
end
