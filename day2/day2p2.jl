io = open("input.txt", "r")
valids = 0

for line in eachline(io)
		range, letter, password	= split(line)
		min_s, max_s = split(range, "-")
		min = parse(Int16,min_s)
		max = parse(Int16,max_s)
		letter = SubString(letter, 1, 1)
		l1 = SubString(password, min, min)
		l2 = SubString(password, max, max)
		c = (l1 == letter) + (l2 == letter) 
		if (c == 1)
				global valids += 1
		end
end

print(valids, "\n")
print()


