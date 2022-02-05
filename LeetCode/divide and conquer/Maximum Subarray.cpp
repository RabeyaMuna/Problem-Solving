class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        return numDiv(0,nums.size()-1,nums);
        
    }
    int numDiv(int l, int h, vector<int> nums){
        if(l==h){
            return nums[l];
        }
        int mid=(l+h)/2;
        int l_subsum=numDiv(l,mid,nums);
        int h_subsum=numDiv(mid+1,h,nums);
        int sum=0;
        int ml=INT_MIN,mr=INT_MIN;
        for(int i=mid;i>=0;--i){
            sum+=nums[i];
            ml=max(sum,ml);
            }
        sum=0;
        for(int j=mid+1;j<=h;++j){
            sum+=nums[j];
            mr=max(sum,mr);
            }
        return max(max(l_subsum,h_subsum),ml+mr);
        }
        
                
            
            
            
};
