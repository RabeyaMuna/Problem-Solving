/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode removeElements(ListNode head, int val) {
        
        ListNode check=head;
        
        if(head==null || (head.next==null && head.val==val)){
            return null;    
        }
        
        while(head.val==val){
            head=head.next;
            if(head==null){
                return null;
            }
        }
        
        while(check!=null && check.next!=null){
            
            if(check.next.val==val){
                check.next=check.next.next;
            }
            else{
                check=check.next;
            }
        }
        
        return head;
        
    }
}
