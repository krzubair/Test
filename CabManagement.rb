require './User.rb'
require './Driver.rb'
require './Taxi.rb'
require './Owner.rb'
require './journey.rb'
require './Bill.rb'
require './Passenger.rb'
require './feedback.rb'
#let user id start from 0011
#let taxi-id start from 51
#let driver-id strat from 102
#let journey-id start from 150
#let owner-id start from 200
#let bill-no start from 500
class CabManagement
    attr_accessor :users, :drivers, :owners, :taxis, :journeys, :feedback, :passenger, :bill

    def initialize
        @users = []
        @drivers = []
        @owners = []
        @taxis = []
        @journeys = []
        @feedback = []
        @passenger = []
        @bill = []

    end  

    def create_user
        puts "enter User ID: "
        user_id = gets.chomp.to_i

        puts "enter Name"
        name = gets.chomp!

        puts "enter Address"
        address = gets.chomp!

        puts "enter Phone_no"
        phone = gets.chomp!

        puts "enter gender "
        gender = gets.chomp!

        user_obj = User.new(user_id, name, address, phone, gender)
        @users << user_obj

        puts "do you want to enter an another user ? yes or no"
        response = gets.chomp!

        if response.downcase == "yes"
            create_user
        else 
            puts "all users are created"
        end        
        

    end 

    def delete_user
        puts "enter the index of user which is to be deleted"
        @users.delete_at(index) 
    end  
    
    def create_owner

        puts "enter id of owner"
        id = gets.chomp.to_i

        puts "enter name of owner"
        name = gets.chomp

        puts "enter address of owner"
        address = gets.chomp

        puts "enter adhar of owner"
        adhar = gets.chomp

        owner_obj = Owner.new(id, name, address, adhar)
        @owners << owner_obj
       
    end 
    
    def create_taxi

        puts "enter reg_no"
        reg_no = gets.chomp.to_i

        puts "enter model No"
        model = gets.chomp.to_i

        puts "enter year"
        year = gets.chomp.to_i

        puts "enter taxi type"
        taxi_type = gets.chomp!

        puts "enter the status"
        status = gets.chomp!

        taxi_obj = Taxi.new(reg_no, model, year, taxi_type, status, @owners[(@owners.size)-1].owner_id)

        @taxis << taxi_obj

        


    end
      
    
    def create_driver
        puts "enter driver id "
        id = gets.chomp.to_i
        
        puts "enter driver name"
        name = gets.chomp

        puts "enter driver address"
        address = gets.chomp

        puts "enter gender of driver"
        gender = gets.chomp

        puts "enter phone_no of driver"
        phone_no = gets.chomp.to_i

        puts "enter age of driver"
        age = gets.chomp.to_i

        puts "enter dl_num"
        dl_num = gets.chomp

        driver_obj = Driver.new(id, name, address, gender, phone_no, age, dl_num)

        @drivers << driver_obj


    end

    def create_journey
        puts "enter journey id"
        id = gets.chomp.to_i

        #puts "enter the date of journey"
        date = Time.new

        puts "enter the start time"
        start_time = gets.chomp

        puts "enter the end time"
        end_time = gets.chomp

        puts "enter the start loc"
        start_loc = gets.chomp

        puts "enter the end loc"
        end_loc = gets.chomp

        puts "enter no. of passenger"
        no_of_passngr = gets.chomp.to_i

        puts "enter the advnce amt"
        advance_amt = gets.chomp.to_i

        journey_obj = Journey.new(id, date, start_time, end_time, start_loc, end_loc, advance_amt, no_of_passngr,@drivers[(@drivers.size)-1].driver_id,@taxis[(@taxis.size)-1].reg_no)
        @journeys << journey_obj


    end    

    

    def create_passenger
        puts "enter the passenger-id"
        pssngr_id = gets.chomp.to_i

        pssngr_obj = Passenger.new(pssngr_id, @journeys[(@journeys.size)-1].journey_id)
        @passenger << pssngr_obj
    end 
    
    
    def create_feedback
        puts "enter the id"
        id = gets.chomp.to_i

        puts "enter the desc"
        desc = gets.chomp!

        puts "enter the email"
        email = gets.chomp!

        feedback_obj = Feedback.new(id, desc, email, @passenger[(@passenger.size)-1].passenger_id,@journeys[(@journeys.size)-1].journey_id)
        @feedback << feedback_obj

    end
    
    def create_bill
        puts "enter the bill_id"
        bill_id = gets.chomp.to_i

        puts "enter bill date"
        bill_date = gets.chomp

        puts "enter your distance"
        distance = gets.chomp.to_i
        rate_per_km = 10
        tot_amt = distance*rate_per_km

        bill_obj = Bill.new(bill_id, bill_date, tot_amt,@journeys[(@journeys.size)-1].journey_id,@users[(@users.size)-1].user_id)
        @bill << bill_obj
        



    end    


    def user_display

        puts "------------all users are-------------------------"

        @users.each do |usr_itr|
            usr_itr.display
            puts "----------------------------------------------"
        end    
    end    

    def taxi_display
        puts "------------------all taxis are --------------------"

        @taxis.each do | itr |
            itr.display
            puts "-----------------------"

        end    
    end 
    
    
    def passenger_display

        puts "--------------------all passengers are------------------------------"

        @passenger.each do |itr|
            itr.display
        puts "--------------------------" 
        end   
    end 

    def owner_display

        puts "--------------all owners are----------------------------"

        @owners.each do |itr|
            itr.display

         puts "------------------------------------------" 
        end  
    end 

    def journey_display

        puts "-----journey details are-----------------"
        @journeys.each do |itr|
            itr.display
        end    
    end 
    
    def feedback_display

        puts "-----feedback details are-----------------"
        @feedback.each do |itr|
            itr.display
        end    
    end 

    def driver_display

        puts "-----driver details are-----------------"
        @drivers.each do |itr|
            itr.display
        end    
    end 

    def bill_display

        puts "-----bill details are-----------------"
        @bill.each do |itr|
            itr.display
        end    
    end 

end

cabsys_obj = CabManagement.new

cabsys_obj.create_user
cabsys_obj.user_display

cabsys_obj.create_owner
cabsys_obj.owner_display

cabsys_obj.create_taxi
cabsys_obj.taxi_display

cabsys_obj.create_driver
cabsys_obj.driver_display


cabsys_obj.create_journey 
cabsys_obj.journey_display

cabsys_obj.create_passenger
cabsys_obj.passenger_display


cabsys_obj.create_bill
cabsys_obj.bill_display

cabsys_obj.create_feedback
cabsys_obj.feedback_display

# puts "enter 1 for create user  " 
# puts "2 for create passenger and display"
# puts "3 for create taxi and display"
# puts "4 for create driver and display"
# puts "5 for create journey and display"
# puts "6 for create bill and display"
# puts "7 for create owner and display"
# puts "8 create feedback and display"

# puts "enter your choice"

#         choice = gets.chomp.to_i

#         if choice ==1 
#             cabsys_obj.create_user
#             cabsys_obj.user_display
#         elsif choice == 2   
#             cabsys_obj.create_passenger
#             cabsys_obj.passenger_display
#         elsif choice ==3
#             cabsys_obj.create_taxi
#             cabsys_obj.taxi_display
#         elsif choice == 4
#             cabsys_obj.create_driver
#             cabsys_obj.driver_display
#         elsif choice == 5
#             cabsys_obj.create_journey 
#             cabsys_obj.journey_display
#         elsif choice == 6
#             cabsys_obj.create_bill
#             cabsys_obj.bill_display
#         elsif choice == 7
#             cabsys_obj.create_owner
#             cabsys_obj.owner_display
#         elsif choice ==8
#             cabsys_obj.create_feedback
#             cabsys_obj.feedback_display

           
#         end 
        
        


    

   

#cabsys_obj.user_display
# cabsys_obj.delete_user


# puts "enter the user name"
# user1 = gets.chomp

# puts "enter name of user"
# name1 = gets.chomp

# puts 



# puts "-------------------------------------------------------------"
# puts "user Details:"
# puts "-------------------------------------------------------------"
# # Create a User object
# user = 

# user.display

# puts "-------------------------------------------------------------"
# puts "Driver Details:"
# puts "-------------------------------------------------------------"
# # Create a Driver object
# driver_obj = Driver.new("102", "Harsh", "Jaipur", "9928475057", "Male","DL-002", "4.5","51")
# driver_obj.display

# puts "-------------------------------------------------------------"
# puts "taxi Details:"
# puts "-------------------------------------------------------------"
# # Create a Taxi object
# taxi_obj = Taxi.new("UP81 AZ0957", "Toyota", "2015", "Sedan", "available", "102")
# taxi_obj.display

# # Create a JourneyDetails object
# puts "-------------------------------------------------------------"
# puts "Journey Details:"
# puts "-------------------------------------------------------------"

# journey_obj = Journey.new("JD001", "2023-04-12", "10:00 AM", "11:00 AM", "U001", "T001", "D001", 100)
# journey_obj.display

# puts "-------------------------------------------------------------"
# puts "owner Details:"
# puts "-------------------------------------------------------------"

# # Create a Owner object
# owner_obj= Owner.new("51", "200")
# Owner_obj.display


# puts "-------------------------------------------------------------"
# puts "Bill Details:"
# puts "-------------------------------------------------------------"

# # Create a BillDetails object

# bill_obj = Bill.new("B001", "2023-04-12", 100, "U001", "JD001")
# bill_obj.display #display bill_details

# puts "---------------------------------------------------------------"
# #passenger details are 
# puts "---------------------------------------------------------------"

# psngr_obj = Passenger.new("pass-1", journey_details1.id)
# psngr_obj.display


# # Create a Cab object by inheriting from Taxi class
# # cab = Cab.new("XYZ789", "Honda", "2018", "Sedan", "available", "002", owner)

# # Generate Bill for the Journey
# #bill = Bill.new(journey_details, user, driver, bill_details)