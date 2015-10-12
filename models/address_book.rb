require_relative 'entry.rb'
require "csv"

require_relative 'entry.rb'
<<<<<<< HEAD
=======

>>>>>>> 78885bde697be02bdeabc0ebe2c64f8cf2cf0901

class AddressBook
    attr_accessor :entries

    def initialize
        @entries = []
    end

<<<<<<< HEAD
    def nuke
        @entries = []
    end

=======
>>>>>>> 78885bde697be02bdeabc0ebe2c64f8cf2cf0901
    def add_entry(name, phone_number, email)
        index = 0
        @entries.each do |entry|
            if name < entry.name
                break
            end
            index += 1
        end
        @entries.insert(index, Entry.new(name, phone_number, email))
    end

<<<<<<< HEAD
=======
    def binary_search(name)
      # Search AddressBook.entries for a specific entry by name
    lower = 0
    upper = entries.length - 1

    while lower <= upper
      mid = (lower + upper) / 2
      mid_name = entries[mid].name

    if name == mid_name
      return entries[mid]
    elsif name < mid_name
      upper = mid - 1
    elsif name > mid_name
      lower = mid + 1
    end
  end
  return nil
end

def iterative_search(name)
  @entries.each do |entry|
    if entry.name == name
      return entry
    end
  end

  return nil
end


>>>>>>> 78885bde697be02bdeabc0ebe2c64f8cf2cf0901
    def import_from_csv(file_name)
        csv_text = File.read(file_name)
        csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
        csv.each do |row|
            row_hash = row.to_hash
            add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
        end
        end

<<<<<<< HEAD

=======
>>>>>>> 78885bde697be02bdeabc0ebe2c64f8cf2cf0901
    def remove_entry(name, phone, email)
        delete_entry = nil

        @entries.each do |entry|
            if name == entry.name && phone == entry.phone_number && email = entry.email
               delete_entry = entry
            end
        end
<<<<<<< HEAD

=======
>>>>>>> 78885bde697be02bdeabc0ebe2c64f8cf2cf0901
        @entries.delete(delete_entry)
    end
end
