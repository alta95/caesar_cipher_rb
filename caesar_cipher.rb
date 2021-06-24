#sample: ABCD abcd 1234 1A2b3C4d....

text = ''
direction = ''
shift = ''
result = ''
qtyShift = ''
letterCase = ''

loop do
    puts 'Text to encrypt:'
    text = gets.chomp
    break if text!=''
end

loop do
    puts 'left/right?'
    direction = gets.chomp
    break if (direction =='left' || direction =='right')
end

loop do
    puts 'Number of shift:'
    shift = gets.chomp
    break if shift.to_i != 0
end

puts "Encrypt:'" + text + "', with a " + direction + " shift of " + shift 

if direction == 'left'
    qtyShift = shift.to_i*-1
    puts qtyShift
else 
    qtyShift = shift.to_i
    puts qtyShift
end


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
        while byte < 65 && letterCase == 'upper' do
            byte += 26
        end
        while byte > 90 && letterCase == 'upper' do
            byte -= 26
        end
        while byte < 97 && letterCase == 'lower' do
            byte += 26
        end
        while byte >122 && letterCase == 'lower' do
            byte -= 26
        end

        result += byte.chr
    else
        result += byte.chr
    end
end
puts result