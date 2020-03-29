class DailyIncrease < ApplicationRecord
  scope :last_filled_increases, -> { where('confirmed > 0 OR recovered > 0 OR deaths > 0').last }
end
