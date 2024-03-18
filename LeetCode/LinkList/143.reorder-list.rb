# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
    array = []

    temp = head

    while temp 
      array.push(temp)
      temp = temp.next
    end
    
    array.each{|x| x.next = nil}

    new_temp = head
    left = 1
    right = array.size - 1

    (1...array.size).each do |i|
      if i.odd?
        new_temp.next = array[right]
        right -= 1
      else 
        new_temp.next = array[left]
        left += 1
      end

      new_temp = new_temp.next
    end

    return new_temp
end
