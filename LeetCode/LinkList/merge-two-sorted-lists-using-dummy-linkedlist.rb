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
  merge_list = ListNode.new
  temp = merge_list

  while list1 && list2
    if list1.val < list2.val
      temp.next = list1
      list1 = list1.next
    else 
      temp.next = list2
      list2 = list2.next
    end

    temp = temp.next
  end

  temp.next = list1 || list2

  return merge_list.next
end
