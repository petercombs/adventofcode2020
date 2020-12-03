io = open("input.txt", "r")
valids = 0

for line in eachline(io)
		range, letter, password	= split(line)
		min_s, max_s = split(range, "-")
		min = parse(Int16,min_s)
		max = parse(Int16,max_s)
		letter = SubString(letter, 1, 1)
		#print("$min _ $max _ $letter _ $password\n")
		c = count(letter, password)
		if (min <= c <= max)
				#print("$password has between $min and $max $letter\n")
				global valids += 1
		end
end

print(valids, "\n")
print()


