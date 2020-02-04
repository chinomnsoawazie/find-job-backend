class GeneralJobsController < ApplicationController
    def index
          generalJobs = GeneralJobs.all
          render json: generalJobs
      end
      
      def show
          generalJob = GeneralJobs.find(params[:id])
          render json: generalJob
      end
      
      def create
          generalJob = GeneralJobs.create(generalJob_params)
          if generalJob.valid?
            render json: generalJob
          else
            render json:{errors: generalJob.errors.full_messages}
          end
      end
    
      
      private
      
      def generalJob_params
          params.require(:generalJob).permit(:job_title, :company_name, :country, :state, :city, :zipcode, :pay, :job_type, :intro, :requirement, :employer_strongpoints, :benefits, :education, :schedule, :description, :duties, :url, :industry)
      end
end
