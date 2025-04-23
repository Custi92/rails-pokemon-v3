class Trainer < ApplicationRecord
  has_many :pokeballs, dependent: :destroy
  has_many :pokemons, through: :pokeball
  has_one_attached :photo

  validates :name, presence: true
  validates :age, presence: true
end
