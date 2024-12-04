L, R = $<.map { _1.split.map &:to_i }.transpose
L.sort!
R.sort!

p L.zip(R).sum { (_1 - _2).abs }
