$user = []
$u_inpt

def menu
    puts "+-----------------------------+"
    puts "|      AUTO FILE EREASER      |"
    puts "+-----------------------------+"
end

def main(user_n)
    $files_in_folder = Dir.glob('./*').select { |e| File.file? e }
    #Set the filters here
    user_n.each do |i|
        $files_in_folder.each do |f|
            if f[-4..-1] == i || f[-5..-1] == i
                File.delete(f)
                puts "removed file " + f
            end
            f = f.to_i+1
        end
        i = i.to_i+1
    end
    puts "end of execution..."
    exit()
end
menu
puts "+-----------------------------+"
puts "| [1]=PNG  [2]=JPG  [3]=JPEG  |"
puts "| [4]=WEBP [5]=FAV            |"
puts "| [*] = exit                  |"
puts "| [r] = run!                  |"
puts "+-----------------------------+"

while $u_inpt != '*' do
    $u_inpt = gets.chomp()
    case $u_inpt
    when '1'
        $user.push(".png")
        puts "chosen value: " + $u_inpt
    when '2'
        $user.push(".jpg")
        puts "chosen value: " + $u_inpt
    when '3'
        $user.push(".jpeg")
        puts "chosen value: " + $u_inpt
    when '4'
        $user.push(".webp")
        puts "chosen value: " + $u_inpt
    when '5'
        $user.push(".fav")
        puts "chosen value: " + $u_inpt 
    when 'r'
        "chosen value: run program"
        main($user)
    when '*'
        puts "quitting..."
        exit()
    else
        puts "invalid value"
    end 
end
puts "final chosen values: " + $user[]