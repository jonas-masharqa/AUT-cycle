Given("I visit the {string} page") do |string|
  visit root_path
end

Given("I am on the {string} page") do |string|
	visit new_user_session_path
end

When("I click on {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("the following article exist") do |table|
	table.hashes.each do |article|
		Article.create!(article)
	end
end

Given("the following user exists") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end
end