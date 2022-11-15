class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update,]

  def index
    @tasks = Task.all
  end

  def show
    #@task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    #@task = Task.find(params[:id])
  end

  def update
    #@task = Task.find(params[:id])
    @task.update(tasks_params)
    redirect_to task_path(@task)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
