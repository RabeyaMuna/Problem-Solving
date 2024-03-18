# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  merge_array = []

  while list1 != nil
    merge_array.push(list1.val)
    list1 = list1.next
  end

  while list2 != nil
    merge_array.push(list2.val)
    list2 = list2.next
  end

   return merge_array.sort()
end
