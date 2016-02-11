##
## TimeStrftime Test
##

assert("Time#strftime with %A and %a") do
  time = Time.new(2016, 1, 2)

  assert_equal('Saturday', time.strftime('%A'))
  assert_equal('Sat',      time.strftime('%a'))
end

assert("Time#strftime with %B, %b and %h") do
  time = Time.new(2016, 1, 2)

  assert_equal('January', time.strftime('%B'))
  assert_equal('Jan',     time.strftime('%b'))
  assert_equal('Jan',     time.strftime('%h'))
end

assert("Time#strftime with %C") do
  time = Time.new(2016, 1, 2)

  assert_equal('20', time.strftime('%C'))
end

assert("Time#strftime with %c") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('Sat Jan  2 03:: ', time.strftime('%c'))
end

assert("Time#strftime with %D") do
  time = Time.new(2016, 1, 2)

  assert_equal('/02/', time.strftime('%D'))
end

assert("Time#strftime with %d and %e") do
  time = Time.new(2016, 1, 2)

  assert_equal('02', time.strftime('%d'))
  assert_equal(' 2', time.strftime('%e'))
end

assert("Time#strftime with %F") do
  time = Time.new(2016, 1, 2)

  assert_equal('--02', time.strftime('%F'))
end

assert("Time#strftime with %H and %k") do
  time = Time.new(2016, 1, 2, 3)

  assert_equal('03', time.strftime('%H'))
  assert_equal(' 3', time.strftime('%k'))
end
