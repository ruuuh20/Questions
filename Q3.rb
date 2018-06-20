def changePossibilities(amount, (first, *denominations))
  if amount == 0
      1
  elsif amount < 0 || first.nil?
      0
  else
    changePossibilities(amount, denominations) + changePossibilities(amount - first, [first, *denominations])
    # denominations.drop(1)
  end
end

# changePossibilities(4, [1,2,3])
