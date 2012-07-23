Given /^"(.*?)" has created a ticket for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    user = User.find_by_email!(email)
    @project.tickets.create!(attributes.merge!(user: user))
  end
end    
