Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I should be on {string} page") do |string|
	article = Article.find_by(title: string)
	expect(current_path).to eq article_path(article)
end

Given("I am on the {string} page") do |string|
	visit new_user_session_path
end
  
Then("I should be on the {string} page") do |string|
	visit new_user_registration_path
end