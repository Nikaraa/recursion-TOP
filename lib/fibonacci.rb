def fibs(n)
  array = []
  for i in 0..n
    if i == 0
      array.push(0)
    elsif i == 1
      array.push(1)
    else
      first = array[i - 1]
      second = array[i - 2]
      array.push(first + second)
    end
    i += 1
  end
  return array
end

def fibs_rec(n)
  return [0, 1] unless n > 1
  num = fibs_rec(n - 1)
  num.push(num[-1] + num[-2])
end

p fibs(11)
p fibs_rec(15)
