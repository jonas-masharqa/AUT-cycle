Given("the following articles exist") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end
  
Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click on {string}") do |element|
 click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, :with => content
end