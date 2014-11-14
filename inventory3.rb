
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
	puts "put \"quit \" to quit"

end

print_inventory(array)

quit = false

# prompt the user to enter which item should be edited.
#keep going until user chooses to quit
until quit == true
	puts "Please select the number of the item to update:"
	user_choice = gets.chomp.to_i

	# After the user chooses the item to edit, the users should be allowed to enter a new inventory count for the item
	if user_choice == "quit".downcase || user_choice == 0
		quit = true
		puts "Program Terminated"
		break

	elsif user_choice > 0 && user_choice < array.length
		index = user_choice - 1
		puts "Please enter the new count for this item: "
		new_count = gets.chomp.downcase
		if new_count == "quit"
			quit = true
			puts "Program Terminated"
			break
		else
			array[index][1]= new_count
			print_inventory(array)
		end

	else
		puts "Please enter a choice between 1 and #{array.length}"
	end
end


