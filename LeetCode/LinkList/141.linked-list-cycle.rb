# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    hash_table = {}
    current = head
    hash_table[current] = 1

    return false if head.nil?
   
    while current.next != nil
      current = current.next

      if hash_table[current].nil?
        hash_table[current] = 1
      else 
        return true
      end
    end
    
    return false
end
