class Shoppingcart
	
	@@items = {}
	
	def add(store, name)
		@item = store.get_item_name(name)
		
		if @@items.has_key?(@item.get_item_id())
			@@items[@item.get_item_id()]+=1
		else
			@@items[@item.get_item_id()]=1
		end
	end
	
	def remove(store, name)
		@item = store.get_item_name(name)
		
		if @@items[@item.get_item_id()] > 0
			@@items[@item.get_item_id()]-=1
		else
			@@items.delete[@item.get_item_id()] 
		end
	end
	
	def is_empty?
		@@items.empty?
	end
	
	def calculate_sum(store)
		@sum = 0
		@@items.each do |id, quont|
			@item = store.get_item_id(id)
			if quont
				@sum+=@item.get_item_price()*quont
			end
		end
		return(@sum)
	end
	
	def show(store)
		@@items.each do |id, quont|
			quont.times do |i|
				@item = store.get_item_id(id)
				@item.get_item()
			end
		end
	end
	
end