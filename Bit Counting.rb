def count_bits(n)
  # TODO: Program me
  c=0
  while n!=0
    
    if n%2==1
       c+=1
    end
    n=n/2
   end
   c
end

describe "Fixed tests" do
  it "should pass fixed tests" do
    Test.assert_equals count_bits(0), 0
    Test.assert_equals count_bits(4), 1
    Test.assert_equals count_bits(7), 3
    Test.assert_equals count_bits(9), 2
    Test.assert_equals count_bits(10), 2
  end
end
