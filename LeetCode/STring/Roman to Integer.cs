public class Solution {
    public int RomanToInt(string s) {
        
        Dictionary<char,int> roman = new Dictionary<char,int>()
        {
            {'I',1},
            {'V',5},
            {'X',10},
            {'L',50},
            {'M',1000},
            {'C',100},
            {'D',500}
        };
        
        int total=roman[s[s.Length-1]];
       
        for(int i=s.Length-1;i>0;--i){
            
            if(roman[s[i]]>roman[s[i-1]]){
                total-=roman[s[i-1]];
                
            }
            
            else{
                 total+=roman[s[i-1]];
            }
        }
        
        return total;
    }
}
