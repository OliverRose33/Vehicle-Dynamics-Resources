classdef CellState < uint8
    
    enumeration
        EMPTY (0)
        RABBIT (1)
        WOLF (2)
    end

    methods
        function characters = convert_to_characters(obj)
            characters = strings(size(obj));
            characters(obj == CellState.EMPTY) = char(8193);
            characters(obj == CellState.RABBIT) = char([55357, 56327]);
            characters(obj == CellState.WOLF) = char([55357, 56378]);
        end

        function display_board(obj)

            arguments (Input)
                obj CellState {mustBeMatrix}
            end

            characters = obj.convert_to_characters();
            row_count = size(obj, 1);
            column_count = size(obj, 2);
            rail = strjoin(repelem(string(char(8212)), column_count));
            border = sprintf("%s %s %s\n", char(9632), rail, char(9632));
            
            fprintf(border);
            for i = 1:row_count
                fprintf("| %s |\n", strjoin(characters(i,:)));
            end
            fprintf(border);

        end
    end

    methods (Static)
        function obj = random(sz)
            
            arguments (Input)
                sz (1,:) double {mustBePositive, mustBeInteger} = 1 
            end
            
            PROBABILITY_EMPTY = 0.5;
            PROBABILITY_RABBIT = 0.3;
            PROBABILITY_WOLF = 0.15;

            size_vector = size(zeros(sz));
            population = [CellState.EMPTY, CellState.RABBIT, CellState.WOLF];
            weights = [PROBABILITY_EMPTY, PROBABILITY_RABBIT, PROBABILITY_WOLF];

            sample = randsample(population, prod(size_vector), true, weights);
            obj = reshape(sample, size_vector);
        
        end
    end

end