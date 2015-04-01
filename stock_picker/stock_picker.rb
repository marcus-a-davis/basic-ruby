def stock_picker(array)

	day_to_buy = array[0]
	day_to_sell = array[1]
	best_pair = [day_to_buy, day_to_sell]
	best_pair_value = day_to_sell - day_to_buy
	

	(0...array.length - 1).select do |a|
		stocks_left = array[a + 1, array.length - 1]
		new_best_value = stocks_left.max - array[a]
		if new_best_value > best_pair_value
			best_pair_value = new_best_value
			day_to_buy = a
			day_to_sell = stocks_left.index(stocks_left.max) + a + 1
		end
	end
	[day_to_buy, day_to_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])