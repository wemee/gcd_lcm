def gcd a, b
  gcd(b,a) if b>a
  a, b = b, a%b until b.zero?
  a
end

def lcm a, b
  a*b/gcd(a,b)
end

def find_gcd *numbers
  numbers[1..-1].inject(numbers[0]) {|result, n| gcd(result, n)}
end

def find_lcm *numbers
  numbers[1..-1].inject(numbers[0]) {|result, n| lcm(result, n)}
end
