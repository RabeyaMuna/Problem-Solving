# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)

  return nil if head == nil

  hash_table = {}
  current = head

  while  current.next != nil
    if hash_table[current] == 1
       return current
    else 
      hash_table[current] = 1
    end
      current = current.next
  end

  return nil
end
