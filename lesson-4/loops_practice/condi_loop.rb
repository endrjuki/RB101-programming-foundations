process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "Loop was processed!"
    break
  end
  
else
  puts " ERROR! Loop failed to process!"
end
