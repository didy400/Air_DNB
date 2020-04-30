class Dog < ApplicationRecord
    has_many :strolls
    has_many :dogsitters, though: :strolls
    belongs_to :city
end
