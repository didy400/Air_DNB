class Dogsitter < ApplicationRecord
    has_many :strolls
    has_many :dogs, trough: :strolls
    blongs_to :city
end
