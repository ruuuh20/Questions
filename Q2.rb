def repeatStr(text, n)
  result = ""
  result = [text] * n
  result.join("")
  result
end

def decodeString(s)
 x = []

  for i in s.split("")
    if i != "]"
      x.push(i)
    else
			temp = ''
			  while x[x.length - 1] != '['
				  temp = x.pop() + temp
        end

			x.pop()

			if (x.length > 0 && x[x.length - 1].match(/[0-9]+/))
				count = x.pop().to_i
			end
			repeat = count.times {temp}

			x.push(repeat)

    end
 end
 repeat = repeatStr(temp, count)
 repeat = repeat.join('')
 repeat
end

# r = "2[b3[a]]"
# r = "4[ab]"

decodeString(r)
