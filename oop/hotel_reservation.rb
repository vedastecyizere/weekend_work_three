# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

  class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

hotelreservation = HotelReservation.new(customer_name: "Moise", date: "January 31, 2017", room_number: 12)

answer = hotelreservation.customer_name
puts answer 
if answer = "Moise" 
  puts "PASS!"
else 
  puts "F"
end 
puts 
answer = hotelreservation.date
puts answer 
if answer = "January 31, 2017"
  puts "PASS!" 
else 
  puts "F" 
end
puts
number = hotelreservation.room_number=(13)
puts "room_number method returns:"
puts number 
if number == 13 
  puts "Pass!"
else 
  puts "F"
end 
puts 
answer = hotelreservation.add_a_fridge[0]
puts "add_a_fridge method returns:"
puts answer 
if answer = "fridge"
  puts "Pass!"
else 
  puts "F"
end 
puts
answer1 = hotelreservation.add_a_crib[1] 
puts "add_a_crib return:"
puts answer1 
if answer1 = "crib"
  puts "PASS!"
else 
  puts "F"
end 
puts
answer2 = hotelreservation.add_a_custom_amenity("WiFi")[2]
puts "add_a_custom_amenity method returns:"
puts answer2
if answer2 = "WiFi"
  puts "PASS!"
else 
  puts "F"
end