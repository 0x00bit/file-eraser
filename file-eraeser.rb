#Filters
$filter = {
    :png => 1,
    :jpeg => 2,
    :jpg => 3
}

def menu
    puts "+-----------------------------+"
    puts "|      AUTO FILE EREASER      |"
    puts "+-----------------------------+"
end

def main(user_n)
    $files_in_folder = Dir.glob('./*').select { |e| File.file? e }
    size = user_n.length
    #Set the filters here

    user_n.each do |i|
        case user_n[i]
            when "png"
                for i in $files_in_folder
                    if i[-4..-1] == 'png' 
                        File.delete(i)
                        puts "arquivo apagado: " + i

                end
            end
            
            when "jpeg"
                for i in $files_in_folder
                    if i[-4..-1] == 'jpeg' 
                        File.delete(i)
                        puts "arquivo apagado: " + i

                end
            end

            when "jpg"
                for i in $files_in_folder
                    if i[-4..-1] == 'jpg' 
                        File.delete(i)
                        puts "arquivo apagado: " + i
                end
            end
            else
                puts "Formato não encontrado"
            end
        end
        i = i.to_i+1
    end


menu

$user = []
$u_inpt
puts "+-----------------------------+"
puts "| [1]=PNG; [2]=JPEG; [3]=JPG  |"
puts "| [*] = exit                  |"
puts "| [r] = run!                  |"
puts "+-----------------------------+"
while $u_inpt != '*' do
    $u_inpt = gets.chomp()
    case $u_inpt
    when '1'
        $user.push(":png")
        puts "chosen value: " + "1"
    when '2'
        $user.push(":jpeg")
        puts "chosen value: " + "2"
    when '3'
        $user.push(":jpg")
        puts "chosen value: " + "3" 
    when 'r'
        main($user)
        puts $user
        $u_inpt = '*'
    when '*'
        puts "quitting..."
        exit()
    else
        puts "invalid value"
    end 
end
puts "final chosen values: " + $user[]


