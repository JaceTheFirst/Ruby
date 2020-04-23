
class Vehicle
    attr_accessor :carName 
    attr_accessor :type 
    attr_accessor :cost 
    attr_accessor :status

    def initialize(args)
        @carName = args[0]
        @type = args[1]
        @cost = args[2]
        @status = args[3]
    end

    def info()
        return (@carName + ' ' + @type + ' ' +@cost.to_s + ' ' +@status.to_s)
    end

end

class VehicleList < Array

    def initialize()
        super
    end

end