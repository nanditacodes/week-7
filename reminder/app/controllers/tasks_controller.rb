class TasksController < ApplicationController

  def index
    @tasks = Task.all.order("created_at DESC")
    @task = Task.new
  end

  def create
    @task = Task.new(set_params)
    @task.save!
  end

  def complete
    @task = Task.find(params[:id])
    @task.done = true
    @task.save
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private
  def set_params
    params.require(:task).permit(:title, :due_date, :done)
  end

end
