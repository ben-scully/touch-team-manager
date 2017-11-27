class User < ApplicationRecord
  has_many :players
  has_many :teams, through: :players

  def display_name
    "#{firstname} #{lastname}"
  end
end
