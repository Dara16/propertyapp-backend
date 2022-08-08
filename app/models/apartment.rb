class Apartment < ApplicationRecord
    belongs_to :tenement
    has_many :occupants
end
