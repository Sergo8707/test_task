require 'active_support/time'

time_start = DateTime.rfc2822('Thu, 22 Dec 2016 00:00:00 +0200')

step1 = time_start + 1.hour
result = [time_start].tap { |i| i << i.last + 15.minutes while i.last < step1 }

step2 = result.last + 4.hour
[result].map { |i| i << i.last + 30.minutes while i.last < step2 }

step3 = result.last + 7.hour
[result].map { |i| i << i.last + 60.minutes while i.last < step3 }

step4 = result.last + 5.days
[result].map { |i| i << i.last + 24.hour while i.last < step4 }

result.delete_if do |x|
  x == '+0200'
  puts x.strftime('%a, %e %b %Y %H:%M:%S')
end
