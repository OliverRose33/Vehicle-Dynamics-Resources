classdef Info

    properties
        Engineer (1,1) string
        Mechanic (1,1) string
        IssueNo (1,1) int32
        DateIssued (1,1) datetime
    end

    methods
        function obj = Info(options)

            arguments
                options.Engineer ="Default Engineer"
                options.Mechanic = "Default Mechanic"
                options.IssueNo = 1
                options.DateIssued = datetime('now')
            end
    
            obj.Engineer = options.Engineer;
            obj.Mechanic = options.Mechanic;
            obj.IssueNo = options.IssueNo;
            obj.DateIssued = options.DateIssued;

        end
    end

end