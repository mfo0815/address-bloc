
greeting = ARGV.shift

ARGV.each do |person|
    puts "#{greeting} #{person}"
end


