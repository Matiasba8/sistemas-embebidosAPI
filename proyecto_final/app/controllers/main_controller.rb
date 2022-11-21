class MainController < ApplicationController
  skip_before_action :verify_authenticity_token
  def arduino_report
    #Only update the first one and only one
    @current_program_state = CurrentProgramState.first

    if params[:screen].present?
      @current_program_state.update(program_state_params)
    end
  end


  def program_state_params
    params.permit(:screen, :velocity_mode, :current_velocity, :current_distance, :partial_distance, :cruise_mode_on, :cruising_speed, :perimeter, :max_velocity, :curve_amplitude)
  end
end
