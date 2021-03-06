require 'spec_helper'

describe ProjectsController do

  let(:user) { create_confirmed_user! }
  let(:project) { FactoryGirl.create(:project) }

  context "standard users" do
    {new: :get, create: :post, edit: :get, update: :put, destroy: :delete}. each do |action, method|
      it "cannot access the #{action} action" do
        sign_in(:user, user)
        send(method, action.to_s.dup, id: project.id)
        response.should redirect_to(root_path)
        flash[:alert].should eql("You must be an admin to do that.")
      end
    end
  end

  describe "#show" do

    it "should display and error for a missing project" do
      get :show, id: "not-existing"
      response.should redirect_to(projects_path)
      flash[:alert].should eql("The project you were looking for could not be found.")
    end
  end
end
