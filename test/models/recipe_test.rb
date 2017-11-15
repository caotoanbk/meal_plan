require "test_helper"

describe Recipe do
	describe "validity" do
		it "requires a user" do
			recipe.errors[:user].must_include
		end
		it "requires a description"
		it "requires a name"
		it "requires the name to be unique for the same user"
		it "does not requires the name to be unique for the different user"
	end
end