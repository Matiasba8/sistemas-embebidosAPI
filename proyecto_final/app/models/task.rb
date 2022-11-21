class Task < ApplicationRecord
  validate :velocity_mode_range, :check_max_velocity_range, :check_current_velocity_range

  validates :screen, presence: true


  def velocity_mode_range
    if velocity_mode.present?
      if !(velocity_mode >= 0 && velocity_mode <= 2)
        errors.add(:velocity_mode_range, "El modo de velocidad debe de estar entre el 0 y el 2 inclusive")
      end
    end
  end

  def check_current_velocity_range
    if max_velocity.present?
      if !(max_velocity >= 0 && max_velocity <= 180)
        errors.add(:max_velocity, "El rango de velocidad maxima debe de estar entre el 0 y el 180 inclusive")
      end
    end
  end

  def check_max_velocity_range
    if max_velocity.present?
      if !(max_velocity >= 0 && max_velocity <= 180)
        errors.add(:max_velocity, "El rango de velocidad maxima debe de estar entre el 0 y el 180 inclusive")
      end
    end
  end
end