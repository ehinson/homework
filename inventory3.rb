# output the current items in a number list and their current counts to the screen

array = [["item1", "count1"],
		["item2", "count2"],
		["item3", "count3"],
		["item4", "count4"]]

def print_inventory(array)
	lineWidth = 40
	j = 0
	puts "Inventory:".center(lineWidth)
	array.each do |i, count|
		puts "#{j+ 1}. #{i} ".center(lineWidth/2)+ "#{count}".center(lineWidth/2)
		j+=1
	end
end

print_inventory(array)

# prompt the user to enter which item should be edited.
puts "Please select the number of the item to update:"
user_choice = gets.chomp.to_i

# After the user chooses the item to edit, the users should be allowed to enter a new inventory count for the item
if user_choice > 0 && user_choice < 5
	index = user_choice - 1
	puts "Please enter the new count for this item: "
	array[index][1]= gets.chomp

	print_inventory(array)
else
	puts "Please enter a choice between 1 and #{array.length}"
end



