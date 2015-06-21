require 'item'

describe Item do
	# it "testing" do
	# 	expect(@launch).to be_true
	# end
	
	
	
	before :each do
		@item = Item.new "name", "id", "price"
	end
	
	describe "#initialize" do
		it "takes three parameters and returns a Item object" do
			@item.should be_an_instance_of Item
		end
	end
	
	describe "#get_price" do
		it "should return item`s price" do
			
		end
	end
	
	# describe "#new" do
	# 	it "takes three parameters and returns a Item object" do
	# 		@item.should be_an_instance_of Item
	# 	end
	# end
	
	
	
end