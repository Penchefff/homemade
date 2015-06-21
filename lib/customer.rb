require './shoppingcart.rb'
require './store.rb'

class Customer
	
	@@cart = Shoppingcart.new()
	
	def add_item_to_cart(store, name)
		@@cart.add(store, name)
	end
	
	def remove_item_from_cart(store, item)
		unless @@cart.is_empty?()
			@@cart.remove(store, item)
		end
	end
	
	def get_total_price(store)
		puts("Total price in this cart is: #{@@cart.calculate_sum(store)}")
	end
	
	def look_cart(store)
		@@cart.show(store)
	end
	
	def look_store(store)
		store.show_items()
	end
	
end