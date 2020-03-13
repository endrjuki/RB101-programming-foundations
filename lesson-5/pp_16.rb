HEXDECIMAL_CHARS = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
8-4-4-4-12

def generate_uuid_section(n)
  uuid = ''
  n.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid
end

def generate_uuid
  uuid = ''
  8.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid += '-'
  4.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid += '-'
  4.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid += '-'
  4.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid += '-'
  12.times {uuid += HEXDECIMAL_CHARS.sample}
  uuid
end

def generate_uuid
  generate_uuid_section(4)
