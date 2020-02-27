class TasksController < ApplicationController
    def create
      task = Task.create(task_params)
      userToDos = User.find(params[:user_id]).tasks
        if task.valid?
          render json: {userToDos: userToDos}
        else
          render json:{errors: task.errors.full_messages}
        end
    end
    
    def update
        task = Task.find(params[:id])
        userToDos = User.find(params[:user_id]).tasks
        if task.update(task_params)
          render json: {userToDos: userToDos}
        else
          render json: task.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Task.destroy(params[:id])
        userToDos = User.find(params[:user_id]).tasks
        render json: {userToDos: userToDos}
    end
    
      private
    def task_params
        params.require(:task).permit(:job_id, :user_id, :description, :due_date, :done_status)
    end
end
