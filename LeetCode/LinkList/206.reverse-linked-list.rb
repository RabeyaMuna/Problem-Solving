# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  new_head = nil
  current = head

  while current != nil
    next_node = current.next
    current.next = new_head
    new_head = current
    current = next_node
  end

  return new_head
end
