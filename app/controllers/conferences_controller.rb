class ConferencesController < ApplicationController

  def index
    render json: Conference.all.to_json
  end

  def show
    render json: Conference.find(params[:id]).to_json
  end

  private

  def permitted_params
    params.require(:conference).permit(:name, :start_date, :end_date, :description, :location)
  end
end
