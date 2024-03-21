# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    length = 0
    temp = head
    while temp != nil
      length += 1
      temp = temp.next
    end
    
    return [] if length == 1

    return head.next if length - n == 0

    temp = head
    
    count = 0
    while count < length - n - 1
      temp = temp.next
      count += 1
    end

     temp.next = temp.next.next
     
     return head
end
