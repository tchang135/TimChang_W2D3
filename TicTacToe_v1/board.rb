class Board 


    def initialize
        @grid = Array.new(3) {Array.new(3,'_')}
    end 

    def  [](pos)
    row = pos[0]
    col = pos[-1]
        @grid[row][col]
    end 

    def  []=(pos, val)
        row = pos[0]
        col = pos[-1]
        @grid[row][col] = val
    end


    def valid?(pos)
       if self[pos]  
          return true 
       else  
          false 
       end 
    end 


    def empty?(pos)
        if self[pos] == '_'
            return true 
        else  
            false 
        end 
    end 


    def place_mark(pos, mark)
        if self.valid?(pos) && self.empty?(pos)
            self[pos] = mark 
        else  
            raise "Can't play there"
        end 
    end 


    def print 
        @grid.each do |row|
            puts row 
        end 
    end 


end 