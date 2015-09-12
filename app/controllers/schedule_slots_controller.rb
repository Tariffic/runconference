class ScheduleSlotsController < ApplicationController

  def new
  end

  def create
    schedule_slot = ScheduleSlot.create(permitted_params)

    if schedule_slot.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  private
  def permitted_params
    params.require(:schedule_slot).permit(:schedule_id, :start_time, :end_time)
  end
end
