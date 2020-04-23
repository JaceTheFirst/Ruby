class Deal
    attr_accessor :user :vehicle :cost :startDate :endDate

    def initialize (user, vehicle, startDate, endDate)
        self.user = user
        self.vehicle = vehicle
        self.startDate = startDate
        self.endDate = endDate
        @cost = vehicle.cost * (endDate = startDate)
    end
end