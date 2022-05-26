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

Another way=================
 
def square_or_square_root(arr)
  arr.map {|x| Math.sqrt(x) == Math.sqrt(x).to_i ? Math.sqrt(x) : x**2}
end
