io = open("input.txt", "r")
nums = Vector{Int64}()
for line in eachline(io)
	a = parse(Int64,line)
	push!(nums, a)
end

for a in nums
	for b in nums
		if a + b == 2020
        print(a, " ",b, " ", a*b, "\n")
    end
	end
end

#print(nums)
