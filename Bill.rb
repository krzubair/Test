require './journey.rb'
require './User.rb'
class Bill
    attr_accessor :bill_id, :bill_date, :tot_amount, :journey_id, :user_id
    
    def initialize(bill_id, bill_date, tot_amount,journey_id, user_id)
      @bill_id = bill_id
      @bill_date = bill_date
      @tot_amount = tot_amount
      @journey_id = journey_id
      @user_id = user_id
      
      
    end
  
     def display
      puts "Bill No: #{@bill_id}"
      puts "Bill Date: #{@bill_date}"
      puts "Amount: #{@tot_amount}"
      puts "Journey ID: #{journey_id}"
      puts "User ID: #{user_id}"
    end
    
  end