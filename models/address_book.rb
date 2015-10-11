<<<<<<< HEAD
require_relative 'entry.rb'
require "csv"
=======
# #8
require_relative 'entry.rb'
>>>>>>> 198a06d59a35354fc800949e4b9e0262be2e71c7

class AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def add_entry(name, phone_number, email)
        # #9
        index = 0
        @entries.each do |entry|
            # #10
            if name < entry.name
                break
            end
            index += 1
        end
        # #11
        @entries.insert(index, Entry.new(name, phone_number, email))
    end
    
<<<<<<< HEAD
    def import_from_csv(file_name)
        csv_text = File.read(file_name)
        csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
        csv.each do |row|
            row_hash = row.to_hash
            add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
        end

        end
    
=======
>>>>>>> 198a06d59a35354fc800949e4b9e0262be2e71c7
    def remove_entry(name, phone, email)
        delete_entry = nil
        
        @entries.each do |entry|
<<<<<<< HEAD
            if name == entry.name && phone == entry.phone_number && email = entry.email
                delete_entry = entry
            end
        end
=======
        if name == entry.name && phone == entry.phone_number && email = entry.email
            delete_entry = entry
        end
    end
>>>>>>> 198a06d59a35354fc800949e4b9e0262be2e71c7
        @entries.delete(delete_entry)
    end
end
