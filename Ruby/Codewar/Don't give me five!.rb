def dont_give_me_five(start_,end_)
    #your code here
    n = 0
    (start_..end_).each do |i|
       n = n + 1 unless i.to_s.include? '5'
    end
    return n      # n amount of numbers
end
