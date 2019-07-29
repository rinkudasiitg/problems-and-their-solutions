#Given a sorted array in which all elements appear twice (one after one) and one element appears only once.


def find_single(a) ## O(N)(Best solution for non sorted and twice)

  return 0 if a.nil?

  n = a.length
  result = a[0]
  for i in (1..n-1)
    result = result^a[i]
  end

  return result

end

#Find that element in O(log n) complexity.
def find_single_sorted(a, l, r)
  if l > r
    return "Not valid"
  end

  if l == r
    return a[l]
  end

  mid = (l+r)/2

  # If mid is even and element after mid is same, then single element is in right half, else in left half
  if mid%2 == 0
    if a[mid] == a[mid+1]
      return find_single_sorted(a, mid+2, r)
    else
      return find_single_sorted(a, l, mid)
    end
  else
  # If mid is odd and element before mid is same, then single element is in right half, else in left half
    if a[mid] == a[mid-1]
      return find_single_sorted(a, mid+1, r)
    else
      return find_single_sorted(a, l, mid-1)
    end
  end
end

def single_non_duplicate(a)
  #Length of the array would be odd or else the constraint fails
  n = a.length
  return a[0] if n == 1
  left = 0
  right = n-1
  r = find_single_sorted(a, left, right)
  return r
end

#Given an array where every element occurs three times, except one element which occurs only once. Find the element that occurs once. Expected time complexity is O(n) and O(1) extra space.


INT_SIZE = 32

def find_single_3_times(arr, n)
  result = 0

  for i in (0..INT_SIZE)
    # Find sum of set bits
    # at ith position in all
    # array elements
    s = 0

    x = (1 << i)

    for j in (0..n-1)
      if (arr[j] & x) > 0
        s += 1
      end
    end

    # The bits with sum not
    # multiple of 3, are the
    # bits of element with
    # single occurrence.
    if (s % 3) != 0
      result = (result | x)
    end
  end

  return result
end

arr = [12, 1, 12, 3, 12, 1, 1, 2, 3, 2, 2, 3, 7]
puts find_single_3_times(arr, arr.size)


#puts find_single([3,3,7,7,10,11,11])
