classdef Direction

    enumeration
        NORTH (-1, 0)
        NORTH_EAST (-1, 1)
        EAST (0, 1)
        SOUTH_EAST (1, 1)
        SOUTH (1, 0)
        SOUTH_WEST (1, -1)
        WEST (0, -1)
        NORTH_WEST (-1, -1)
    end

    properties
        x
        y
    end

    methods
        function obj = Direction(x, y)
            obj.x = x;
            obj.y = y;
        end

        function shifted_matrix = shift(obj, matrix)
            shifted_matrix = circshift(matrix, [obj.x, obj.y]);
        end
    end

    methods (Static)
        function count = count_surrounding(matrix)
            
            arguments (Input)
                matrix (:,:) {mustBeNumericOrLogical, mustBeMatrix}
            end
            
            directions = enumeration(Direction.empty);
            count = zeros(size(matrix));
            
            for i = 1:length(directions)
                count = count + directions(i).shift(matrix);
            end

        end
    end

end