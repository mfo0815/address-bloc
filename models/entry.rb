class Entry
    attr_accessor :name, :phone_number, :email
    
    def initialize(name, phone_number, email)
        @name =name
        @phone_number=phone_number
        @email=email
    end
<<<<<<< HEAD
    #   #7
=======
#   #7
>>>>>>> 198a06d59a35354fc800949e4b9e0262be2e71c7
    def to_s
        "Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email}"
    end
end