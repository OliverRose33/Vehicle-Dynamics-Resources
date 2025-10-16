classdef CellReference

    properties (SetAccess = immutable)
        Reference (1,1) string
    end

    properties (SetAccess = private)
        Column (1,1) int32 {mustBePositive} = 1
        Row (1,1) int32 {mustBePositive} = 1
    end

    properties (Constant, Hidden)
        CELL_REGEX = "^(?<column>[A-Z]+)(?<row>[1-9][0-9]*)$";
        RANGE_REGEX = "^(?<start_column>[A-Z]+)(?<start_row>[1-9][0-9]*)" ...
            + ":(?<end_column>[A-Z]+)(?<end_row>[1-9][0-9]*)$";
    end

    methods (Static)
        function index = lettersToIndex(letters)
            arguments (Input)
                letters char {mustBeVector, mustBeLetter}
            end
            arguments (Output)
                index (1,1) int32 {mustBePositive}
            end
            asciiValue = double(letters);
            placeValue = asciiValue - 64;
            exponent = 26 .^ (length(placeValue)- 1:-1:0);
            index = sum(placeValue .* exponent);
        end
    end

    methods (Access = public)
        function index = toSubstruct(obj)
            index = substruct("{}", {obj.Row, obj.Column});
        end
    end

    methods (Access = private)
        function obj = parse(obj)
            if regexp(obj.Reference, obj.CELL_REGEX)
                obj = obj.parseCell();
            elseif regexp(obj.Reference, obj.RANGE_REGEX)
                obj = obj.parseRange();
            else
                error("Invalid cell reference '%s'", obj.Reference)
            end
        end
        
        function obj = parseCell(obj)
            import CellReference.lettersToIndex
            match = regexp(obj.Reference, obj.CELL_REGEX, "names");
            obj.Column = lettersToIndex(match.column);
            obj.Row = str2double(match.row);
        end

        function obj = parseRange(obj)
            error("Unable to parse range '%s'; " ...
                + "range references are not yet supported", obj.Reference)
        end
    end

    methods
        function obj = CellReference(reference)
            obj.Reference = reference;
            obj = obj.parse();
        end
    end

end

function mustBeLetter(letters)
    assert(all(isletter(letters)), "'%s' is not a letter", letters)
end