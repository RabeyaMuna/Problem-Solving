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
    public ListNode removeNthFromEnd(ListNode head, int n) {
        
        ListNode first=head, counting=head;
        
        int c=1;
        
        if (counting.next==null && n>=1){
            head=null;
            return head;
        }
        
        while(counting!=null && counting.next!=null){
            counting=counting.next;
            c++;
        }
        
       if(n==c){
           
        head=head.next;
    }
        
        int i=1;
        
        while(i<(c-n)){
            
            first=first.next;
            i++;
        }
        
        
       
        
      if (first.next.next!=null){
          first.next=first.next.next;
      }
        else{
            first.next=null;
        }
        
     return head;
        
    }
}
