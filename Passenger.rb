require './journey.rb'
class Passenger

    attr_accessor :passenger_id, :journey_id

    def initialize(passenger_id, journey_id)
        @passenger_id = passenger_id
        @journey_id = journey_id
        

    end
    
    def display
        puts "passenger id is #{@passenger_id}"
        puts "journey id is #{@journey_id}"

    end     
end    