#Dividing(partitioning) problem is the task of deciding whether a given multiset of positive integers 
#can be  partitioned into two subsets S1 and S2 such that the sum of the elements in S1 equals the sum 
#of the elements in S2.

def partition(input1)
   if (!input1.detect { |i| i <= 0 }.nil?)
     return "Invalid"#-1
   else 
     input = input1.sort    
     #arr = split(input)
     sum = (input1.inject(0){|sum,item| sum + item})
     if(sum%2 == 0)
     t=isSubsetSum(input1,input1.length ,sum/2)
     else
     return "No"#-1
     end
     if(t)
       return "Yes"#1
     else
       return "No"#0
     end
   end
end

def isSubsetSum(set, n, sum)
   if (sum == 0)
     return true
   end
   if (n == 0 && sum != 0)
     return false
   end
   if (set[n-1] > sum)
     return isSubsetSum(set, n-1, sum)
   end
 
   return isSubsetSum(set, n-1, sum) || isSubsetSum(set, n-1, sum-set[n-1])
end

p partition([1,5,3])
