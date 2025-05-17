p (10..100).include?(42)

p (10..100).cover?(42) # This is more performance-efficient because it only checks the beginning and end of a range.

