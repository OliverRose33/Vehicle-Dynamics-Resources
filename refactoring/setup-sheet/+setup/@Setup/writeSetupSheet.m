function writeSetupSheet(obj, filename)

    arguments (Input)
        obj (1,1) setup.Setup
        filename (1,1) string
    end

    ROOT = "C:\Repositories\Vehicle-Dynamics-Resources\refactoring\setup-sheet\";
    TEMPLATE = "Master Setup Sheet.xlsx";
    TEMP_DIR = "temp";
    mkdir(fullfile(ROOT, TEMP_DIR))
    copyfile(fullfile(ROOT, TEMPLATE), fullfile(ROOT, TEMP_DIR, TEMPLATE))
    movefile(fullfile(ROOT, TEMP_DIR, TEMPLATE), filename)

    %Info
    writematrix(obj.Info.Engineer, filename, "Range", "D6")
    writematrix(obj.Info.Mechanic, filename, "Range", "D7")
    writematrix(obj.Info.IssueNo, filename, "Range", "L6")
    writematrix(obj.Info.DateIssued, filename, "Range", "Q6")

    %Driver
    writematrix(obj.Driver.DriverName, filename, "Range", "D10")
    writematrix(obj.Driver.DriverWeight, filename, "Range", "F10")