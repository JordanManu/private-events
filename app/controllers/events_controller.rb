class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def show 
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build
  end

  def create 
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:success] = "Event '#{@event.name}' created!"
      redirect_to @event
    else
      flash[:alert] = "Some error!"
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :user_id)
  end
end
