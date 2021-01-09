
def fib_inefficient(n)
  return n if n < 2;
  fib(n-2) + fib(n-1)
end

# inefficient as call stack grows exponentially

# 1, 1, 2, 3, 5, 7, 12, 19 

# let's try with a loop
def fib(n)
  return n unless n >= 2
  return 1 if n == 2

  number = 1
  next_number = 1
  until n <= 2
    total = number + next_number # 2, 3 , 5
    number = next_number # 1, 2
    next_number = total # 2, 3
    n-=1;
  end

  total
end




