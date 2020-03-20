MAX = 10**10
n = 80
def get_v(x, y)
    if x<0 or y<0 then
        return MAX
    elsif x>n or y>n then
        return MAX
    else
        return grid[x][y]
    end
end

def find(x, y, can_up, sum)
    if x == n then
        return sum
    else
        if get_v(x, y+1) < get_v(x, y-1) then
            if get_v(x, y+1) < get_v(x+1, y) then
                find(x, y+1, false, sum + get_v(x, y+1))
            elsif can_up and get_v(x, y-1) < get_v(x+1, y) then
                find(x, y-1, true, sum + get_v(x, y-1))
            else
                find(x+1, y, true, sum + get_v(x, y-1))
            end
        elsif can_up and get_v(x, y-1) < get_v(x+1, y) then
            find(x, y-1, true, sum + get_v(x, y-1))
        else
            find(x+1, y, true, sum + get_v(x+1, y))
        end
    end
end

file = File.open("input.txt", "r")
alldig = file.split(',')
for i in 0...n do
    for j in 0...n do
        grid[i][j] = alldig[i*n+j].to_i
    end
end
results = Array.new()
for i in range 0...n do
    results<<find(0,i,true,0)
end
min = MAX
for i in 0...results.size do
    if results[i]<min then
        min = results[i]
    end
end
puts(min)