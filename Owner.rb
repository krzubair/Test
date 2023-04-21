class Owner
    attr_accessor  :owner_id, :owner_name, :owner_adhar, :owner_address
    
    def initialize(owner_id, owner_name, owner_adhar, owner_address)
      @owner_id = owner_id
      @owner_name = owner_name
      @owner_adhar = owner_adhar
      @owner_address = owner_address

    end
  
    def display
      puts "owner id  of owner : #{@owner_id} "
      puts "owner name : #{@owner_name}"
      puts "owner adhar : #{@owner_adhar}"
      puts "owner address : #{@owner_address}"
    end  
  end