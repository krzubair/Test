class Person

    attr_accessor :id, :name, :address, :phone_no, :gender
    
    def initialize(user_id, name, address, phone_number, gender)
      
      @id = id
      @name = name
      @address = address
      @phone_no = phone_no
      @gender = gender
    end
  
    def display
      puts "User ID: #{id}"
      puts "Name: #{@name}"
      puts "Address: #{@address}"
      puts "Phone No: #{@phone_no}"
      puts "Gender: #{@gender}"
      puts "-------------------------------------------------------------"
    end 

end    