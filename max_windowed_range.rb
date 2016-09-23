


def naive_solution(arr, window)
  current_max = nil
  num_times = arr.length - window + 1

  (0...num_times).each do |i|
    sub = arr[i...i + window]
    min, max = sub.min, sub.max
    range = max - min
    current_max = range if current_max.nil? || range > current_max
  end
  current_max
end
# iterates once through the array
# iterates through sub_arrays of size w

def optimized_solution(arr, window)
  num_times = arr.length - window + 1

  (0...num_times).each do |i|
    sub = arr[i...i + window]
    min, max = sub.min, sub.max
    range = max - min
    current_max = range if current_max.nil? || range > current_max
    arr.shift
  end
  current_max
end
