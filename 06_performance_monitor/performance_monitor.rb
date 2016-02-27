def measure num = 1
  beginning_time = Time.now
  num.times do
    yield
  end
  end_time = Time.now
  (end_time-beginning_time)/num
end