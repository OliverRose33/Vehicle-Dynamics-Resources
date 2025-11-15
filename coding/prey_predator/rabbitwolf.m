function [E_evol, n_wolf, n_rabbit] = rabbitwolf(E0, ngen)

    try
        assert(ismatrix(E0), ...
            "E0 must be a matrix.");
        assert(size(E0, 1) == size(E0, 2), ...
            "E0 must be square.");
        assert(ngen >= 1, "ngen must be positive.")
        assert(mod(ngen, 1) == 0, "ngen must be an integer.")
        assert(isfinite(ngen), "ngen must be finite.")
        assert(all(ismember(E0, [0, 1, 2]), "all"), ...
            "E0 must only contain 0, 1, or 2.")
    catch MException
        warning(MException.message);
        E_evol = zeros(size(E0));
        n_rabbit = 0;
        n_wolf = 0;
        return
    end

    simulation = Simulation(E0);
    simulation.run(ngen, true)
    disp(simulation)

    E_evol = simulation.current_board_state;
    n_rabbit = simulation.count_total_rabbits();
    n_wolf = simulation.count_total_wolves();