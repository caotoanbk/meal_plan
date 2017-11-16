exit if !Rails.env.development?

puts "Deleting the Data"
Recipe.delete_all
User.delete_all

puts "Creating user"
user = FactoryGirl.create(:user, email: "test@example.com")

puts "Creating recipes"
20.times do 
	FactoryGirl.create(:recipe, user: user)
end