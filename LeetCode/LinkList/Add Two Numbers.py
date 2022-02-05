# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        
        head=temp=ListNode(None)
        total=0
        remain=0
        
        while l1 and l2 :
            
            total+=l1.val+l2.val  
            temp.next=ListNode(total%10)
            total=total//10
            l1=l1.next
            l2=l2.next
            temp=temp.next
            
        while l1:
            
            total+=l1.val
            temp.next=ListNode(total%10)
            total=total//10
            l1=l1.next
            temp=temp.next
            
        while l2:
            
            total+=l2.val
            temp.next=ListNode(total%10)
            total=total//10
            l2=l2.next
            temp=temp.next
        
        
            
        if total!=0:
            temp.next=ListNode(total)
            
            
        return head.next
            
