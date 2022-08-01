class UsersController < ApplicationController

  def show
    @users_events = Event.all.includes(:creator)
  end

end
