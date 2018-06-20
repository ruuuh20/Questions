# s = "weather".split("")
# t = "therapyw".split("")

def sortByString(s, t)
  ss = s.split("")
  tt = t.split("")
  result = ss.sort_by{|l| tt.index(l) }
   return result.join("")
end

#test
# sortByString("weather", "therapyw")
# sortByString("good", "odg")
