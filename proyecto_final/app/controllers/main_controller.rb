class MainController < ApplicationController
  skip_before_action :verify_authenticity_token
  def arduino_report
    #Only update the first one and only one
    @current_program_state = CurrentProgramState.first

    if params[:screen].present?
      respond_to do |format|

        if @current_program_state.update(program_state_params)
          format.json { render json: {state: "CurrentProgramState Updated!"}, status: :ok}
          format.html 
        else
          format.json { render json: @current_program_state.errors, status: :unprocessable_entity }
        end
        
      end
    end
  end

  def get_next_task
    @new_task = Task.first
    respond_to do |format|
      if @new_task.present?
        @new_task.destroy
        format.json { render json: @new_task, status: :ok }
      else
        format.json { render json: {status: "There are no tasks!"} }
      end
    end
  end

  def create_new_task
    @new_task = Task.new(program_state_params)

    respond_to do |format|
      if @new_task.save
        format.json { render json: {status: "New Task saved!"}, status: :ok }
      else
        format.json { render json: @new_task.errors, status: :unprocessable_entity }
      end
    end
  end


  def program_state_params
    params.permit(:screen, :velocity_mode, :current_velocity, :current_distance, :partial_distance, :cruise_mode_on, :cruising_speed, :perimeter, :max_velocity, :curve_amplitude)
  end

end 