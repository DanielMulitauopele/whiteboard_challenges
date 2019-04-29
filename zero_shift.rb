# Input array of integers, shifting all 0's to the end of the array

def zero_shift(array)
  lp = 0
  rp = array.length - 1

  while lp < rp do
    if array[lp] == 0 && array[rp] != 0
      array[lp], array[rp] = array[rp], array[lp]
      lp += 1
      rp -= 1
    elsif array[lp] == 0 && array[rp] == 0
      rp -= 1
    else
      lp += 1
    end
  end

  print array
end

zero_shift([0, -1, 4, 0, 1, 0, 3])
