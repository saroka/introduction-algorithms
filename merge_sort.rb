class MergeSort
  def self.sort(a=[])
    return a if a.size == 1
    left = sort a[0..(a.size-1)/2]
    right = sort a[((a.size-1)/2+1)..(a.size-1)]
    merge left, right
  end
  
  def self.merge(left, right)
    a = []
    j = 0
    k = 0
    for i in 0..(left.size+right.size-1) do
      if left.size > j && (right.size == k || left[j] < right[k])
        a[i] = left[j]
        j += 1
      else
        a[i] = right[k]
        k += 1
      end
    end
    a
  end
end