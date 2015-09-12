class ConferencesController < ApplicationController

  def index
    @conferences = Conference.all
  end

  def show
    render json: Conference.find(params[:id]).to_json
  end

  private

  def permitted_params
    params.require(:conference).permit(:name, :start_date, :end_date, :description, :location)
  end
end
