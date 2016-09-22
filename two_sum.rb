def bad_two_sum?(arr, target_sum)
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      return true if arr[i] + arr[j] == target_sum
      j += 1
    end
    i += 1
  end
  false
end
# n^2

def good_two_sum?(arr, target_sum)
  arr.sort!.reverse!
  return false if arr[0] + arr[1] < target_sum
  return false if arr[-1] + arr[-2] > target_sum

  arr.each_with_index do |num1, i|
    remainder = target_sum - num1

    arr[i + 1..-1].each_with_index do |num2, j|
      return true if num2 == remainder
      break if num2 < remainder
    end
  end
  false
end
# n^2
# to optimize, use two pointers from both ends
# return false when the pointers switch sides


def hash_pair_sum?(arr, target)
  count = Hash.new(0)
  arr.each { |num| count[num] += 1 }

  count.keys.each do |key|
    remainder = target - key
    return true if count[remainder] > 0
  end
  false
end
