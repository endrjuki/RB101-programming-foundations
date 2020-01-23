def triangle(n)
  spaces = n - 1
  stars = n - spaces

  n.times do
    puts (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end
