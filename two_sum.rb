

def two_sum(arr, target)
  possible = {}
  arr.each_with_index do |el,idx|
    if possible[el]
      return [ possible[el], idx]
    else
      possible[target - el] = idx
    end
  end
  return null

end


p two_sum([2,7,11, 15], 18)
