class TasksController < ApplicationController
  before_action -> { doorkeeper_authorize! :public }, only: [:index, :get_task]
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  def get_task
    @tasks = Task.all
    render json: @tasks
  end
end
