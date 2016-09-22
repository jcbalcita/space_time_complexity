def my_min1(list)
  i = 0

  while i < list.length
    j = i + 1
    while j < list.length
      if j == list.length - 1
        if list[i] <= list[j]
          return list[i]
        else
          return list[j]
        end
      end
      break if list[j] < list[i]
      j += 1
    end
    i += 1
  end
end

def my_min2(list)
  current_min = list.first

  list.each do |elem|
    current_min = elem if elem < current_min
  end

  current_min
end


def largest_sub_sum1(list)
  subsets = []
  (1..list.length).each do |len|
    start_idx = 0
    end_idx = start_idx + len - 1
    while start_idx < list.length - len + 1
      subsets << list[start_idx..end_idx]
      start_idx += 1
      end_idx += 1
    end
  end

  sums = []
  subsets.each do |sub|
    sums << sub.reduce(0) { |acc, num| acc + num }
  end

  sums.max
end


def largest_sub_sum2(list)
  current_sum = list[0]
  current_max = list[0]

  list[1..-1].each do |num|
    current_sum = [num, current_sum + num].max
    current_max = [current_max, current_sum].max
  end

  current_max
end
