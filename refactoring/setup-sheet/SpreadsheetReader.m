classdef SpreadsheetReader < handle & matlab.mixin.indexing.RedefinesDot

    properties (Access = public)
        Filename (1,1) string
    end

    properties (SetAccess = private)
        Data
    end

    methods (Access = private)
        function readData(obj)
            obj.Data = readcell(obj.Filename, DataRange = "A1");
        end
    end

    methods (Access = protected)
        function value = dotReference(obj, indexOp)
            arguments (Output)
                value (1,1) string
            end
            reference = CellReference(indexOp.Name);
            value = subsref(obj.Data, reference.toSubstruct());
        end

        function obj = dotAssign(obj, ~, varargin)
            message = "Class 'SpreadsheetReader' for file '%s' is read-only.";
            error(message, obj.Filename)
        end

        function n = dotListLength(~, ~, ~)
            n = 1;
        end
    end

    methods
        function obj = SpreadsheetReader(filename)
            obj.Filename = filename;
            obj.readData();
        end
    end

end