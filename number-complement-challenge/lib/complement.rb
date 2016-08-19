def get_complement(number)
  string = sub_non01s(convert_to_binary(number))
  binary_inversion = swap_numbers(string)
  return convert_to_number(binary_inversion)
end

def swap_numbers(string, n=1)
  return (n != string.length) ? swap_num(string[n-1]) + swap_numbers(string, n+1) : swap_num(string[n-1])
end

def swap_num(num)
  return '1' if num == '0'
  '0'
end

def convert_to_binary(number)
  number.to_s(2)
end

def convert_to_number(string)
  string.to_i(2)
end

def sub_non01s(string)
  string.sub(/[^01]/, '')
end
