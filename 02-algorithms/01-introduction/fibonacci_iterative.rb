def fib(n)
  fib_array = []
  i = 0
  while i <= n
    if i <= 1
      fib_array.push(i)
    else
      x = fib_array[i-1] + fib_array[i-2]
      fib_array.push(x)
    end
    i+=1
  end
  result = fib_array.empty? ? "No negative numbers" : fib_array.last
end



puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)
