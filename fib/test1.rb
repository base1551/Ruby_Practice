def fib(n)
  if n == 1 || n == 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

result = fib(15)
puts result
