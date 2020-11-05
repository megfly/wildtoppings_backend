class Topping < ApplicationRecord
    belongs_to :pizza

    validates :ingredient_name, presence: true
end
