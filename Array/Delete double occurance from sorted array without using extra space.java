/* package whatever; // don't place package name! */

import java.util.*;
class Ideone
{
	public static void main (String[] args)
	{
		// your code goes here
       int arr[]={1,2,2,2,3,3,4,5,5,7,8,9,9};
       int j=0;
       for(int i=1;i<arr.length;++i){
           if (arr[i-1]!=arr[i]){
               j++;
               arr[j]=arr[i];
              }
   }
   
   arr=Arrays.copyOf(arr,j+1);
    
   for(int k=0;k<arr.length;++k){

      System.out.print(arr[k]+" ");

	}
}
}
