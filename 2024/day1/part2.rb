L, R = $<.map { _1.split.map &:to_i }.transpose
h = Hash.new(0).merge R.tally

p L.sum { _1 * h[_1] }
