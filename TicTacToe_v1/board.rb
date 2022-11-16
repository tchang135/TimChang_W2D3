class Board 


    def initialize
        @grid = Array.new(3) {Array.new(3,'_')}
    end 

    def  [](pos)
    row = pos[0]
    col = pos[-1]
        @grid[row][col]
    end 


    def valid?(pos)
       if @grid[pos]  
          return true 
       else  
          false 
       end 
    end 


    def empty?(pos)
        if @grid[pos] == '_'
            return true 
        else  
            false 
        end 
    end 


    def place_mark(pos, mark)
        if valid?(pos) && empty?(pos)
            @grid[pos] = mark 
        else  
            raise "Can't play there"
        end 
    end 

end 