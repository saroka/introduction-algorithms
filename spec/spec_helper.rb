require 'rspec'

require 'insertion_sort'
require 'merge_sort'

RSpec.configure do |config|
  config.mock_with :rspec
end

def random_array_of(n)
  [].tap{ |a|
    for i in 0..(n-1) do
      a[i] = rand 100
    end
  }
end