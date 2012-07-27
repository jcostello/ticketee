module SeedHelpers
  def create_confirmed_user!
    user = FactoryGirl.create(:user)
    user.confirm!
    user
  end
end
