class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "SELECT first_name, last_name FROM actors"
  end
end