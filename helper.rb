module Helper
    def contain?(array_1, array_2)
        counter = 0
        array_2.each do |value|
            if array_1.include?(value)
                counter += 1
            end
        end
        if counter == array_2.length
            true
        else
            false
        end
    end
end
            