require "byebug"

class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n,:N)}
        @size = n * n 
    end 

    
    def size 
        @size 
    end 


    def [](arr)
        first = arr[0]
        second = arr[-1]   
        @grid[first][second]
    end 


    def []=(pos, val)
        first = pos[0]
        second = pos[-1]
        @grid[first][second] = val
    end 


    def num_ships
        counter = 0
        @grid.each do |subarr|
            subarr.each do |ele|
                counter += 1 if ele == :S
            end 
        end 
    counter
    end 


    
end
