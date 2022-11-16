require "byebug"

class Board

    def self.print_grid(grid)
        grid.each do |subarr|
            puts subarr.join(" ")
        end 
    end 


    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n 
    end 

    
    def size 
        @size 
    end 


    def [](pos)
        first = pos[0]
        second = pos[-1]   
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


    def attack(position)
        if self[position] == :S 
            self[position] = :H
            puts 'you sunk my battleship!'
            return true 
        else  
            self[position] = :X
            false 
        end 
    end 


    def place_random_ships
        total = @size * 0.25
        while self.num_ships < total
            row = rand(0...@grid.length)
            col = rand(0...@grid.length)
            pos = [row, col]
            self[pos] = :S
        end 
    end 


    def hidden_ships_grid
        @grid.map do |subarr|
            subarr.map do |ele|
                if ele == :S 
                    :N 
                else  
                    ele
                end 
            end 
        end 
   
    end
    
    
    def cheat 
        Board.print_grid(@grid)
    end 


    def print 
        Board.print_grid(hidden_ships_grid)
    end 

end
