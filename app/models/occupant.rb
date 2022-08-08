class Occupant < ApplicationRecord
    belongs_to :apartment
    belongs_to :tenement
end
