io = open("input.txt", "r")
nums = Vector{Int64}()
for line in eachline(io)
        a = parse(Int64,line)
        push!(nums, a)
end

for a in nums
        for b in nums
                if a == b break end
                for c in nums
                        if c == b break end
                        if a + b + c == 2020
                                print("$a $b $c ", a*b*c, "\n")
                        end
                end
        end
end

#print(nums)
