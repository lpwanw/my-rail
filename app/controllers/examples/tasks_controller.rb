# frozen_string_literal: true

class Examples::TasksController < ApplicationController
  def update
    task = Examples::Task.find_by(id: params[:id])
    task.update status: params[:status]
  end
end
