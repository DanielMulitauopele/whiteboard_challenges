def open_parens
  {
    "(" => true,
    "{" => true,
    "[" => true
  }
end

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
    if open_parens[char]
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

# Valid string
linter("([cd]ef){}")

# Invalid strings
linter("{{}")
linter("}{")
linter("({)}")
