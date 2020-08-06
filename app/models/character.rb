class Character < ActiveRecord::Base
  belongs_to :actors
  belongs_to :shows
  
  def say_that_thing_you_say
    actor = self.actor
    cp = self.catchphrase
    
    "#{actor} always says: #{cp}"
  end
end