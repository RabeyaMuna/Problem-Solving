class Solution {
public:
    double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2) {
        vector <int> a;
        if(nums1.size()>0){
            for(int i=0;i<nums1.size();++i){
                a.push_back(nums1[i]);
            }
        }
          if(nums2.size()>0){
            for(int i=0;i<nums2.size();++i){
                a.push_back(nums2[i]);
            }
        }
        
        sort(a.begin(),a.end());
        for(int i=0;i<a.size();++i){
            cout<<a[i]<<" ";
        }
        cout<<endl;
        double ans;
        
        if(a.size()%2==0){
            int m=(a.size())/2;
            ans=(double)(a[m-1]+a[m])/2;
        }
         if(a.size()%2==1){
            int m=(a.size())/2;
            ans=a[m];
        }
        
        return ans;
    }
};
