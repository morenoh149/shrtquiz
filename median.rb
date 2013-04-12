# median takes an array and returns it's median value
def median(arr)
  arr = my_sort(arr)
  l = arr.length
  if l % 2 == 0
    index = l/2
    index -= 1
    a = arr[index]
    b = arr[index+1]
    return (a+b)/2
  else
    return arr[l/2]
  end
end

def my_sort(arr)
  result = Array.new()
  length = arr.length 
  for x in 0...length
    result << arr.delete_at(arr.rindex(small(arr)))
  end
  result
end

def small(arr)
  min = 1000000000000
  arr.each do |e|
    if e < min
     min = e
    end
  end
  min
end

a = [101, 45, 56, 74]
print a
print median(a)
