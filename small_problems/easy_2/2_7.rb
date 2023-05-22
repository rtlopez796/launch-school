=begin
for i in (1..99)
  if i % 2 != 0
    puts i
  end
end
=end

1.upto(99) do |i|
  puts i if i.odd?
end