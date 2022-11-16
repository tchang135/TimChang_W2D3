require "byebug"

class Player
    def get_move 
        puts 'enter a position with coordinates separated with a space like `4 7`'
        input = gets.chomp 
        coords = input.split(" ")
        arr = []
        coords.each do |num|
            arr << num.to_i
        end 
    arr
    end 
end
