class InsertionSort
  def self.sort(a=[])
    for i in 1..(a.size-1) do
      for j in 0..(i-1) do
        if a[i] < a[j]
          swap a, i, j
        end
      end
    end
    a
  end
  
  def self.swap(a, i, j)
    a[j] = a[i].tap { |v| a[i] = a[j] }
  end
end