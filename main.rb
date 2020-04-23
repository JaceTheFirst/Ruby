current_path = File.dirname(__FILE__)
require "#{current_path}/controller.rb"
require "#{current_path}/user.rb"

vehicle_path = "#{current_path}/data/vehicles.txt"
user_path = "#{current_path}/data/users.txt"
deal_path = "#{current_path}/data/deals.txt"

input = FileController.new(user_path, vehicle_path, deal_path)
output = TerminalController.new
admin = AdminUser.new("admin", "12345")

puts "Enter your login and password"
log = gets.chomp
pass = gets.chomp
if admin.LogIn(log, pass)
    output.ShowMenu()
    answer = gets.to_i
    while answer != 4
        case answer
        when 1
            puts "тутюзеры"
        when 2
            admin.ShowVehicles(input, output)
        when 3
            puts "тутсделки"
        end
        puts
        answer = gets.to_i
    end
    puts "Logging out..."
else
    puts "Неправильный логин или пароль"
end
