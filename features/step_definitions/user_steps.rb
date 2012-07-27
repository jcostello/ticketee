Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == "true"
    admin = attributes.delete("admin") == "true"
    @user = User.create!(attributes)
    @user.update_attribute(:admin, admin)
    @user.confirm! unless unconfirmed
  end
end

Given /^I am signed in as them$/ do
  steps(%Q{
    And I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "#{@user.email}"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully"
    And I should see "Signed in as #{@user.email}"
  })
end

Given /^I signed in as "(.*?)"$/ do |email|
  @user = User.find_by_email!(email)
  step("I am signed in as them")
end
