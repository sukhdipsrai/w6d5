CAT_COLORS = ['black', 'white','brown','orange','gray']

class Cat < ApplicationRecord
    validates :name,  presence: true
    validates :birth_date, presence: true
    validates :color, presence: true , inclusion: {in: CAT_COLORS}
    validates :sex, presence: true
    validates :description, presence: true


end

