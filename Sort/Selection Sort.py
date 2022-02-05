A=[5,2,67,8,2,8,1,0,8,6,54,32,3]
 
for i in range (len(A)):
 
	minIndex=i
	for j in range(i+1,len(A)):
 
		if A[minIndex]> A[j]:
			minIndex=j
 
		A[minIndex],A[i]=A[i],A[minIndex]
 
for i in A:
	print(i)
