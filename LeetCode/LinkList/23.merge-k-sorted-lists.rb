# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return [] if lists.empty?
  
  new_array = []
  lists.each do |list|
    while list != nil
      new_array << list.val
      list = list.next
    end
  end
    
    return new_array.sort
end
