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
  fill_in field, :with => content
end

Then("I visit the edit page") do
  expect(page).to eq edit_article
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
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