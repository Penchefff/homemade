class Item
	
	def initialize(name, id, price, discount_price)
		@name			= name
		@id				= id
		@price			= price
		@discount_price	= discount_price
	end
	
	def get_item
		puts("Name: #{@name}, ID: #{@id}, Value: #{@price}")
	end
	
	def get_item_price
		@price
	end
	
	def get_item_id
		@id
	end
	
	def get_item_name
		@name
	end
end