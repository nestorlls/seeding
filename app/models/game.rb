class Game < ApplicationRecord
    validates :name, :genre, :price, presence: true
end
