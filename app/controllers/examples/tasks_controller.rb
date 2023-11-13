# frozen_string_literal: true

class Examples::TasksController < ApplicationController
  before_action :load_task, only: %i[show edit update]

  def show
    redirect_to examples_sortable_index_path unless turbo_frame_request?
  end

  def edit
    redirect_to examples_sortable_index_path unless turbo_frame_request?
  end

  def update
    @task.update task_update_params

    render :show if params[:attribute]
  end

  private

  def load_task
    @task = Examples::Task.find_by(id: params[:id])
  end

  def task_update_params
    params.require(:examples_task).permit(:name, :description, :status)
  end
end
