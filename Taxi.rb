require './Owner.rb'
class Taxi
    attr_accessor :reg_no, :model, :year, :taxi_type, :status, :owner
    
    def initialize(reg_no, model, year, taxi_type, status, owner)
      @reg_no = reg_no
      @model = model
      @year = year
      @taxi_type = taxi_type
      @status = status
      @owner= owner
      

     
    end
    
    def display
      puts "Reg No: #{@reg_no}"
      puts "Year: #{@year}"
      puts "Taxi Type: #{@taxi_type}"
      puts "Status: #{@status}"
      puts "owner ID: #{@owner}"
      puts "-------------------------------------------------------------"
    end
    
  end