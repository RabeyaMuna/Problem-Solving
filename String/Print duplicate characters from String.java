
import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class Ideone

{
	
	public static void Occurance(String word){
		
		char [] words=word.toCharArray();
		
		Map<Character,Integer> ch= new HashMap<Character,Integer>();
		
		for(Character Cha: words){
			
			if(ch.containsKey(Cha)){
				
				ch.put(Cha,ch.get(Cha)+1);
				
			}
			else{
				
				ch.put(Cha,1);
				
			}
			
		}
		
		System.out.println( ch );
		
		Set<Map.Entry<Character, Integer>> entrySet = ch.entrySet();
		
		System.out.printf("List of duplicate characters in String '%s' %n", word); 
		
		for (Map.Entry<Character, Integer> entry : entrySet) 
		{ 
			if (entry.getValue() > 1)
			{ 
				System.out.printf("%s : %d %n", entry.getKey(), entry.getValue()); 
				
			} 
			
		}

	}
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		Scanner sc=new Scanner(System.in);
		String word= sc.next();
		Occurance(word);
	}
}
