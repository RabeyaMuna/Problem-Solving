# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  @item = []
  total = 0

  operations.each do |ele|
    if ele == "C"
      @item.pop
    elsif ele == "D"
      @item << @item[-1] * 2
    elsif ele == "+"
     @item << @item[-2..].sum
    else 
      @item.push(ele.to_i)
    end
  end

  return @item.sum
end
