require './person.rb'
class User  < Person
    attr_accessor :user_id, :name, :address, :phone_no, :gender
    
    def initialize(user_id, name, address, phone_number, gender)
      super
    end
  
    def display

      super
      # puts "User ID: #{@user_id}"
      # puts "Name: #{@name}"
      # puts "Address: #{@address}"
      # puts "Phone No: #{@phone_no}"
      # puts "Gender: #{@gender}"
      # puts "-------------------------------------------------------------"
    end
  
    
  end