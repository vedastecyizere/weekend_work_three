# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote 
  attr_accessor :tv 

  def toggle_power
    if @power == "ON"
      return "OFF"
    else 
      return "ON"
    end 
  end 

  def increment_volume 
    return @volume + 1 
  end 
  def decrement_volume
    return @volume -= 1  
  end 

  def set_channel(number) 
    return @channel << number 
  end 

class Tv < Remote  
  attr_accessor :power, :volume, :channel

  def initialize(setting)
    @power = setting[:power]
    @volume = setting[:volume]
    @channel = setting[:channel]
  end 
end 
tv = Tv.new(power: "ON", volume: 45, channel: 6)


end
remote = Remote.new 
answer = tv.volume 
puts answer

answer = remote.increment_volume
puts answer 
answer = remote.set_channel(7)
puts answer 