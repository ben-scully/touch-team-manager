class Team < ApplicationRecord
  has_many :players
  has_many :users, through: :players
  has_many :managers
  has_many :users, through: :managers
  has_many :coaches
  has_many :users, through: :coaches

  def display_name
    "#{name}"
  end
end
