class EnrollmentsController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    enrollment = current_user.enrollments.build(event_id: event.id, user_id: params[:user_id])

    if enrollment.save
      flash[:notice] = "Invitation sent!"
      redirect_to users_path(event_id: event.id)
    else
      flash[:alert] = 'Ooops! Something went wrong...'
      redirect_to event_path(event)
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @enrollment = Enrollment.find_by(event_id: params[:event_id], user_id: current_user.id)

    flash[:notice] = "Thank you for signing up for the #{@event.title}!"
    redirect_to event_path(@event)
  end
  
end
