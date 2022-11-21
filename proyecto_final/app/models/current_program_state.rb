class CurrentProgramState < ApplicationRecord
  validate :screen_range
  validates :screen, presence: true


  def screen_range
    if screen.present?
      if !(screen >= 1 && screen <= 8)
        errors.add(:screen_range, "El numero de la pantalla debe estar en un rango del 1 al 8")
      end
    end
  end

end
