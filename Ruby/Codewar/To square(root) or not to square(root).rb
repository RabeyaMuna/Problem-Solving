def square_or_square_root(arr)
 new_arr= []
  
  arr.each do |num|
    if Math.sqrt(num) % 1 == 0
      new_arr.push(Math.sqrt(num).to_i)
    else 
      new_arr.push(num**2)
    end
  end
    
    return new_arr
end
