
require './person.rb'
class Driver < Person
    attr_accessor :driver_id, :driver_name, :driver_address, :driver_gender,  :driver_phone_no,:driver_age, :driver_dl_no
    
    def initialize(driver_id, driver_name, driver_address, driver_gender,driver_phone_no, driver_age,  driver_dl_number)
     
      super(driver_id, driver_name, driver_address, driver_gender, driver_phone_no)
      @driver_age = driver_age
      @driver_dl_number = driver_dl_no
      
    end
  
    def display
      # puts "Driver ID: #{@driver_id}"
      # puts "driver Name: #{@driver_name}"
      # puts "driver Address: #{@driver_address}"
      # puts "driver gender: #{@driver_gender}"
      super
      puts "driver age: #{@driver_age}"
      # puts "driver phone_no: #{@driver_phone_no}"
      puts "driver dl_no: #{@driver_dl_no}"
      
      
     
      puts "-------------------------------------------------------------"
    end
    
  end
  