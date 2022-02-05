class Solution {
public:
    vector<int> minSubsequence(vector<int>& nums) {
        vector<int> v;
        int TotalSum=0;
        for(int i=0;i<nums.size();i++){
            TotalSum+=nums[i];
        }

        sort(nums.begin(),nums.end(),greater<int>());
        
        int sum=0;
        
        for(int i=0;i<nums.size();i++)
        {
            sum+=nums[i];
            
            v.push_back(nums[i]);
            
            TotalSum-=nums[i];
            
            if(sum>TotalSum)
            {
                break;
        }
        }
        return v;
    }
};
