require './item.rb'

class Store
	@@items = []
	
	def load_store
		@@items<<Item.new('chir',11,111, 110)
		@@items<<Item.new('chir',11,111, 110)
		@@items<<Item.new('mast',22,222, 220)
		@@items<<Item.new('test',33,333, 330)
	end
	
	def show_items
		@@items.each do |i|
			i.get_item()
		end
	end
	
	def get_item_name(name)
		@@items.each do |i|
			if i.get_item_name() == name
				return i
			end
		end 
		return nil
	end
	
	def get_item_id(id)
		@@items.each do |i|
			if i.get_item_id() == id
				return i
			end
		end 
		return nil
	end
	
end