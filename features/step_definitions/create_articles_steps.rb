Given("I visit the {string} page") do |string|
    visit new_article_path
end

When("I fill in {string} with {string}") do |string, string2|
    fill_in string, with: string2
end

When("I click {string} button") do |string|
    click_button(string)
end

Then("I should be on {string} page") do |string|
    visit new_article_path
end

And("I should see{string}") do |string|
    expect(page).to have_content(string)
end