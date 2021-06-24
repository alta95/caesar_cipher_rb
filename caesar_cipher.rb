# text = ''
# direction = ''
# shift = ''

# loop do
#     puts 'Text to encrypt:'
#     text = gets.chomp
#     break if text!=''
# end

# loop do
#     puts 'left/right?'
#     direction = gets.chomp
#     break if (direction =='left' || direction =='right')
# end

# loop do
#     puts 'Number of shift:'
#     shift = gets.chomp
#     break if shift.to_i != 0
# end

# puts "Encrypt:'" + text + "', with a " + direction + " shift of " + shift 

text = 'What a string!'
direction = 'left'
shift = '5'
result = ''
qtyShift = 5
letterCase = ''

text.each_byte do |byte|

    if byte.between?(65, 90) 
        letterCase = 'upper'
    elsif byte.between?(97, 122) 
        letterCase = 'lower'
    else
        letterCase = 'nonChar'
    end


    if byte.between?(65, 90)  || byte.between?(97, 122)
        byte +=  qtyShift
        #check if byte.between?(65, 90)  || byte.between?(97, 122)
        #upper & <65
        while byte < 65 && letterCase == 'upper' do
            byte += 26
        end
        #upper & >90
        while byte > 90 && letterCase == 'upper' do
            byte -= 26
        end
        #lower & <97
        while byte < 97 && letterCase == 'lower' do
            byte += 26
        end
        #lower & > 122
        while byte >122 && letterCase == 'lower' do
            byte -= 26
        end

        result += byte.chr
    else
        result += byte.chr
    end
end
puts result