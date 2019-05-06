# def open_parens
#   {
#     "(" => true,
#     "{" => true,
#     "[" => true
#   }
# end

def closed_parens
  {
    ")" => "(",
    "}" => "{",
    "]" => "["
  }
end

def linter(string)
  stack = []

  string.each_char do |char|
    if ["{", "(", "["].include?(char)
      stack << char
    elsif closed_parens[char]
      return false if closed_parens[char] != stack.pop
    else
      next
    end
  end

  if stack.count > 0
    return false
  else
    return true
  end
end

# def linter(s)
#   r = s.chars
#   hash = {"}" => "{", ")" => "(", "]" => "["}
#   i = 0
#   while i < r.length do
#     if hash.has_key?(r[i])
#       if hash[r[i]] == r[i - 1]
#         r.delete_at(i)
#         r.delete_at(i - 1)
#         0 <= (i - 2) ? (i -= 2) : (i = 0)
#       else
#         return false
#       end
#     else
#       i += 1
#     end
#   end
#   r.length.zero?
# end

# Valid string
puts linter("([cd]ef){}")

# Invalid strings
puts linter("{{}")
puts linter("}{")
puts linter("({)}")
