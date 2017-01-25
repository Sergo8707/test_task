def x(n, singular, plural = nil)
  if n == 1
    "1 #{singular}"
  elsif plural
    "#{n} #{plural}"
  else
    "#{n} #{singular}s"
  end
end

t1 = 1_478_779_621

t2 = 1_478_687_791

result = t1 - t2
mm, ss = result.divmod(60)
hh, mm = mm.divmod(60)
dd, hh = hh.divmod(24)

print '%d day %d hour %d min' % [dd, hh, mm]
print " end #{x(ss.to_i, 'second')}\n" unless ss.zero?
