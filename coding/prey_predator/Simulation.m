classdef Simulation < handle

    properties (GetAccess = private, SetAccess = private)
        current_board_state (:,:) CellState
        initial_board_state (:,:) CellState
        generation (1,1) double {mustBeNonnegative, mustBeInteger} = 0
    end

    methods
        function obj = Simulation(initial_board_state)
            arguments (Input)
                initial_board_state (:,:) CellState {mustBeMatrix}
            end
            obj.initial_board_state = initial_board_state;
            obj.current_board_state = initial_board_state;
        end
    end

    methods (Static)
        function obj = random(board_size)
            arguments (Input)
                board_size (1,:) double {mustBePositive, mustBeInteger} = 10
            end
            obj = Simulation(CellState.random(board_size));
        end
    end

    methods (Access = public)
        function run(obj, ngen, options)

            arguments (Input)
                obj (1,1) Simulation
                ngen (1,1) double {mustBeNonnegative, mustBeInteger} = 1
                options.ShowBoards (1,1) logical = false
            end

            for i = 1:ngen
                obj.update_board_state();
                
                if options.ShowBoards
                    fprintf(newline)
                    obj.display_board();
                    obj.display_statistics();
                end
            end

        end

        function disp(obj)
            obj.display_header();
            obj.display_board();
            obj.display_statistics();        
        end

        function display_initial_board(obj)
            obj.initial_board_state.display_board();
        end
    end

    methods (Access = private)
        function display_header(obj)
            fprintf("<strong>Prey-Predator Simulation</strong>\n\n");
            board_size = strjoin(string(size(obj.current_board_state)), "x");
            fprintf("\tBoard size: %s\n", board_size);
        end

        function display_board(obj)
            obj.current_board_state.display_board();
        end

        function display_statistics(obj)
            fprintf("  Generation %i | ", obj.generation);
            fprintf("Rabbits: %i | ", obj.count_total_rabbits())
            fprintf("Wolves: %i\n", obj.count_total_wolves());
        end
    end

    methods (Access = private)
        function rabbits = is_rabbit(obj)
            rabbits = (obj.current_board_state == CellState.RABBIT);
        end

        function wolves = is_wolf(obj)
            wolves = (obj.current_board_state == CellState.WOLF);
        end

        function empty_cells = is_empty(obj)
            empty_cells = (obj.current_board_state == CellState.EMPTY);
        end

        function total_rabbits = count_total_rabbits(obj)
            total_rabbits = sum(obj.is_rabbit(), "all");
        end

        function total_wolves = count_total_wolves(obj)
            total_wolves = sum(obj.is_wolf(), "all");
        end

        function rabbit_count = count_surrounding_rabbits(obj)
            rabbit_count = Direction.count_surrounding(obj.is_rabbit());
        end

        function wolf_count = count_surrounding_wolves(obj)
            wolf_count = Direction.count_surrounding(obj.is_wolf());
        end

        function update_board_state(obj)
            surrounding_rabbits = obj.count_surrounding_rabbits();
            surrounding_wolves = obj.count_surrounding_wolves();

            overpopulation = (obj.is_rabbit() & (surrounding_rabbits > 3));
            underpopulation = (obj.is_rabbit() & (surrounding_rabbits < 2));
            repopulation = (obj.is_empty() & (surrounding_rabbits == 3));
            starvation = (obj.is_wolf() & (surrounding_rabbits == 0));
            predation = (obj.is_rabbit() & (surrounding_wolves >= 1));

            obj.current_board_state(overpopulation) = CellState.EMPTY;
            obj.current_board_state(underpopulation) = CellState.EMPTY;
            obj.current_board_state(repopulation) = CellState.RABBIT;
            obj.current_board_state(starvation) = CellState.EMPTY;
            obj.current_board_state(predation) = CellState.EMPTY;

            obj.generation = obj.generation + 1;
        end
    end
end