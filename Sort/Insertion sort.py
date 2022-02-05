
A=[5,2,67,8,2,8,1,0,8,6,54,32,3]

for i in range (1,len(A)):
	
	
	j=i
	
	while j>0 and A[j-1]>A[j]:
		
		A[j-1],A[j]=A[j],A[j-1]
			
		j-=1

for i in A:
	print(i)
