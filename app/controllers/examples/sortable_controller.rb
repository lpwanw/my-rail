# frozen_string_literal: true

class Examples::SortableController < ApplicationController
  def index
    tasks = Examples::Task.all
    @task_by_status = Examples::Task.statuses.transform_values do |key, _|
      tasks.public_send key
    end
  end
end
