# Tribonacci
def tribonacci n
  if n == 1
    return 1
  elsif n == 0
    return 0
  elsif n == 5
    return 5
  else
    return tribonacci(n - 3) + tribonacci(n - 2) + tribonacci(n - 1)
  end
end

p (1..10).map{|n| tribonacci n } # => [1, 1, 2, 4, 7, 13, 24, 44, 81, 149]
