##represent the state of the app
module Model
    class Coord < Struct.new(row,col)
    end
    class Food < Coord
    end
    class Snake < Struct.new(positions)
    end
    class Grid < Struct.new(rows,cols)
    end
    class State < Struck.new(snake, food, grid)
    end
end
