class TopicsController < ApplicationController
 
  def index
    @topics = Topic.where(conference_id: params[:conference_id])
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @topics.to_json }
    end
  end

  def show
    render json: Topic.find(params[:id]).to_json
  end

  def new
  end

  def create
    topic = Topic.create(permitted_params)
    confirm_save topic
  end

  def vote
    topic = Topic.find(params[:id])
    topic.update(points: (topic.points + 1))
    confirm_save topic
  end

  private

  def confirm_save topic
    if topic.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def permitted_params
    params.require(:topic).permit(:name, :type, :description, :facilitator, :points, :conference_id, :schedule_slots_id)
  end
end
