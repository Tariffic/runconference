class SchedulesController < ApplicationController

  def new
  end

  def create
    schedule = Schedule.create(permitted_params)

    if schedule.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  private
  def permitted_params
    params.require(:schedule).permit(:conference_id)
  end
end
