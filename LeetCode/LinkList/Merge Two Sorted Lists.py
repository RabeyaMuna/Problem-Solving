# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        
        head=temp=ListNode()
        
        while l1 and l2:
            
            if l1.val<l2.val:
                temp.next=ListNode(l1.val)
                l1=l1.next
            else:
                temp.next=ListNode(l2.val)
                l2=l2.next
            temp=temp.next
         
        while l1:
            temp.next=ListNode(l1.val)
            l1=l1.next
            temp=temp.next
         
        while l2:
                temp.next=ListNode(l2.val)
                l2=l2.next
                temp=temp.next
                
        
        return head.next
