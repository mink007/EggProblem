#!/usr/intel/bin/ruby

def getMaxFloors(marblesCount, dropsCount)
    puts "In getMaxFloors. marblesCount = #{marblesCount}, dropsCount = #{dropsCount}"
	if marblesCount == 0
	    puts "Returning 0"
		return 0
	else
		result = 0
        i = 0
		for i in 0..(dropsCount-1)
			result = result + getMaxFloors(marblesCount - 1, i) + 1
			puts "Total drops so far #{result}"
        end
        return result
	end
end

def getMinDrops(marblesCount, floorsCount) 
  dropsCount = 0
  while(getMaxFloors(marblesCount, dropsCount) < floorsCount) do
    puts "mC #{marblesCount}, dC #{dropsCount}, fC #{floorsCount}"
    dropsCount += 1
  end
  return dropsCount
end

# getMinDrops(number of eggs, number of floors)
puts getMinDrops(4, 1)
