class SuperUser
    attr_accessor :login
    attr_accessor :password

    def initialize(login, password)
        self.login = login
        self.password = password
    end

    def LogIn(login, password)
        loginCheck = false
        passwordCheck = false
        if self.login == login
            loginCheck = true
        end
        if self.password == password
            passwordCheck = true
        end
        if loginCheck && passwordCheck
            return true
        else
            return false
        end
    end
end

class AdminUser < SuperUser
    @vehicleList
    @dealList
    @userList

    def initialize(login, password)
        super
    end

    def ShowVehicles(fileController, outputController)
        if @vehicleList.nil?
            @vehicleList = fileController.ReadVehicles
        end
        outputController.ShowVehicles(@vehicleList)
    end

    def ShowUsers(fileController, outputController)
        if @userList.nil?
            @userList = fileController.ReadUsers()
        end
        outputController.ShowUsers()
    end

    def ShowDeals(fileController, outputController)
        if @dealList.nil?
            @dealList = fileController.ReadDeals()
        end
        outputController.ShowDeals()
    end
end

class User < SuperUser
    attr_accessor :fio
    attr_accessor :email
    attr_accessor :phone
    @myDeals

    def initialize(args)
        super(args[0], args[1])
        fio = args[3]
        email = args[4]
        phone = args[5]
    end

    def info()
        return @fio + ' ' + @email + ' ' + @phone
    end

    def ShowMyDeals(fileController, outputController)
        if @myDeals.nil?
            @myDeals = fileController.ReadUserDeals(self.info)
        end
        outputController.ShowDeals(@myDeals)
    end
end