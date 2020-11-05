class Pizza < ApplicationRecord
    has_many :toppings

    validates :title, :description, presence: true 
end
