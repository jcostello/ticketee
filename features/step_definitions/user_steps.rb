Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    confirmed = attributes.delete("confirmed") == "true"
    @user = User.create!(attributes)
    @user.confirm! if confirmed
  end
end

