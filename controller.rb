current_path = File.dirname(__FILE__)
require "#{current_path}/vehicle.rb"

class SuperController
    @user_path
    @vehicle_path
    @deal_path

    def initialize(user_path, vehicle_path, deal_path)
        @user_path = user_path
        @vehicle_path = vehicle_path
        @deal_path = deal_path
    end

end

class FileController < SuperController

    def initialize(user_path, vehicle_path, deal_path)
        super
    end

    def ReadVehicles()
        file = open @vehicle_path
        vehicleList = VehicleList.new
        file.each do |line|
            args = line.split(';')
            veh = Vehicle.new(args)
            vehicleList.append(veh)
        end
        return vehicleList
    end
end

class TerminalController
    def initialize()
    end

    def ShowMenu()
        puts "What do you want?"
        puts "1. Show users list"
        puts "2. Show vehicles list"
        puts "3. Show deals list"
        puts "4. Log out"
        puts
    end

    def ShowVehicles(vehicleList)
        vehicleList.each do |vehicle|
            puts vehicle.info
        end
    end
end