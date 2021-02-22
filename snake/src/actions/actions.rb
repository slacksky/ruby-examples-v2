module Actions
def self.move_snake(state)
    next_direction = state.next_direction
    calc_next_position(state)
    #verify if next speace is valid else terminate the game
    if position_is_valid?(state, next_position)
        move_snake_to(state,next_position)
    else
        end_game(state)
    end
    #if it is move the snake
     
    def calc_next_position(state)
        curr_position = state.snake.postions.first
        case state.next_direction
        when UP 
            #decrease row
            return = Model::Coord.new(
                curr_position.row - 1,
                curr_position.col)
        
        when RIGHT 
            #increase col
            return = Model::Coord.new(
                curr_position.row,
                curr_position.col + 1)
        when DOWN 
            #increase row
            return = Model::Coord.new(
                curr_position.row + 1,
                curr_position.col)
        when LEFT 
            #decrease  col
            return = Model::Coord.new(
                curr_position.row ,
                curr_position.col- 1)
        end
        
        def position_is_valid?(state, next_position)
            # verify if either is out of the grid 
            is_invalid =((position.row >= state.grid.rows ||
                poition.row<0) ||
                (position.col  >= state.grid.cols ||
                poition.col<0))

            return false if is_invalid
            #or on itself (the snake .positions)
            return !(state.snake.positions.include? position)
            
        end

        def move_snake_to(state,next_position)
            #example [(1,1),(1,0)]->[(1,2),(1,1)] going downward in this example
            new_positions = [next_position] + state.snake.positions[0...-1]#concatenate  from the first to the last without the last one#
            state.snake.positions = new_positions # update to the new position 
            state ##functions should return the state
        end
        def end_game(state)
            state.game_finshed = true
            state ##functions should return the state
        end



    end
end

end