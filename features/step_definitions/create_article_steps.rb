Given("I visit the {string} page") do |landing|
    visit root_path
  end
  
  When("I click {string} link") do |string|
    click_button("New Article")
  end
  
  When("I fill in {string} with {string}") do |title, text|
    fill_in("title", :with => title, :with => text)
  end
  
  When("I click {string} button") do |string|
    click_button("Create Article")
  end
  
  Then("I should be on {string} page") do |rails5|
    # expect(page).to have_content rails5
  end