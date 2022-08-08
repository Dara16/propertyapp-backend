class Tenement < ApplicationRecord
    has_many :apartments
    has_many :occupants, through: :apartments
end
