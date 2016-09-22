def first_anagram(word)
  perms = word.chars.permutation.to_a
  perms.map { |combo| combo.join }
end

def anagrams?(str1, str2)
  ans1 = first_anagram(str1)
  ans1.include?(str2)
end

def second_anagram?(str1, str2)
  return false unless str1.length == str2.length

  i = 0
  while i < str1.length
    ch = str1[i]

    if str2.include?(ch)
      str1.delete!(ch)
      str2.delete!(ch)
      i -= 1
    end
    i += 1
  end

  str1.empty? && str2.empty?
end


def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  count1 = Hash.new(0)
  count2 = Hash.new(0)

  str1.chars { |ch| count1[ch] += 1 }
  str2.chars { |ch| count2[ch] += 1 }

  count1 == count2
end
