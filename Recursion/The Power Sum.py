import re
import sys

def powerSum(X,N,i):
    value=X-i**N
    if value==0:
        return 1
    if value< 0:
        return 0
    else:
        return powerSum(value,N,i+1)+powerSum(X,N,i+1)
        
if __name__ == "__main__":
    X = int(input().strip())
    N = int(input().strip())
    result = powerSum(X, N, 1)
    print(result)
        
    
