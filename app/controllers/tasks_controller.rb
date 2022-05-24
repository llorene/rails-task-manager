class TasksController < ApplicationController
  # refacto fa tokony misy ao am edit, show, delete, update
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = Task.all
  end

  def show
  end

  # afficher le form
  def new
    @task = Task.new
  end

  # creer vraiment
  def create
    @task = Task.new(params_task)
    @task.save

    redirect_to tasks_path
  end

  # afficher le form
  def edit
  end

  # l'action update mihitsy
  def update
    @task.update(params_task)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
