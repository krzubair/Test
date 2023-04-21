require './Driver'
require './Taxi'
require './Bill'


class Journey
    attr_accessor :journey_id, :journey_date, :start_time, :end_time, :start_loc, :end_loc, :advance_amt, :no_of_passngr, :driver_id, :taxi_id
    
    def initialize(journey_id, journey_date, start_time, end_time, start_loc, end_loc, advance_amt, no_of_passngr,driver_id,taxi_id)
      @journey_id = journey_id
      @journey_date = journey_date
      @start_time = start_time
      @end_time = end_time
      @start_loc = start_loc
      @end_loc = end_loc
      @advance_amt = advance_amt
      @no_of_passngr = no_of_passngr
      @driver_id = driver_id
      @taxi_id =taxi_id
    end
  
    def display
      puts "Journey ID: #{@journey_id}"
      puts "Date of Journey: #{@journey_date}"
      puts "Start Time: #{@start_time}"
      puts "End Time: #{@end_time}"
      puts "start_time: #{@start_time}"
      puts "end time: #{@end_time}"
      puts "advance amount given trip: #{@advance_amt}"
      puts "no of passengers: #{@no_of_passngr}"
      puts "driver_id: #{@driver_id}"
      puts "taxi_id is: #{@taxi_id}"
      #puts "bill id is: #{@bill_obj.bill_id}"

    end
  end