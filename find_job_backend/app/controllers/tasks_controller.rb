class TasksController < ApplicationController
    def index
        tasks = Task.all 
        render json: tasks
    end
    
    def show
        task = Task.find(params[:id])
        render json: task
    end
    
    def create
        task = Task.create(task_params)
        if task.valid?
          render json: task
        else
          render json:{errors: task.errors.full_messages}
        end
    end
    
    def update
        task = Task.find(params[:id])
        if task.update(task_params)
          render json: task
        else
          render json: task.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Task.destroy(params[:id])
    end
    
      private
    
    def task_params
        params.require(:task).permit(:job_id, :description, :due_date, :done_status)
    end
end
