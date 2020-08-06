class Show < ActiveRecord::Base
  has_many :character
  has_many :actor, through: :character
  
  def actors_list
    self.actors.collect do |a|
      a.first_name a.last_name
    end
  end
end