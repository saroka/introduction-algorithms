require 'spec_helper'

describe MergeSort do
  it 'sorts [5, 4, 3, 2, 1] as [1, 2, 3, 4, 5]' do
    MergeSort.sort([5,4,3,2,1]).should == [1,2,3,4,5]
  end
  
  it 'sorts [1,2,3] as [1,2,3]' do
    MergeSort.sort([1,2,3]).should == [1,2,3]
  end
  
  it 'sorts random array' do
    unsorted = random_array_of 10
    MergeSort.sort(unsorted).should == unsorted.sort
  end  
end