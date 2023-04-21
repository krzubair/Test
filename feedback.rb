require './Passenger.rb'
require './journey.rb'
class Feedback
    attr_accessor :fdbk_id, :fdbk_desc, :fdbk_email, :passenger_id, :journey_id

    def initialize(fdbk_id,fdbk_desc,fdbk_email, passenger_id, journey_id)
    @fdbk_id = fdbk_id
    @fdbk_desc = fdbk_desc
    @fdbk_email = fdbk_email
    @passenger_id = passenger_id
    @journey_id = journey_id

    end


    def display
        puts "feedback_id : #{@fdbk_id}"
        puts "feedback_description: #{@fdbk_desc}"
        puts "feedback_email: #{@fdbk_email}"
        puts "passenger_id: #{@passenger_id}"
        puts "journey_id: #{@journey_id}"
    end    

end    