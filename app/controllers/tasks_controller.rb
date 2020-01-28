class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @task = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.create(task_params)
  end

  def edit
    redirect_to tasks_path
  end

  def update
    @tasks = Task.update(task_params)
  end

  def destroy
    @tasks.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @tasks = Task.find(params[:id])
  end
end
