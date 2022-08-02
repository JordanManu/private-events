class EnrollmentsController < ApplicationController

  def new 
    @enrollment = current_user.enrollments.build
  end

  def create 
    @enrollment = current_user.enrollments.build

    if @enrollment.save?

    end
  end

  def update
    enrollment = Enrollment.find(params[:id])

  end
end
