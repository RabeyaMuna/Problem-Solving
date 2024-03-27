# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
  counter = 1
  temp = list1
  start_node = nil
  end_node = nil

  while temp != nil
    if a == counter 
      start_node = temp
    elsif b + 1== counter
      end_node = temp.next
      break 
    end

    temp = temp.next
    counter += 1
  end

  temp02 = list2

  while temp02.next
    temp02 = temp02.next
  end
  
  start_node.next = list2
  temp02.next = end_node

  return list1
end
