require 'spec_helper'

describe ProjectsController do

  describe "#show" do

    it "should display and error for a missing project" do
      get :show, id: "not-existing"
      response.should redirect_to(projects_path)
      flash[:alert].should eql("The project you were looking for could not be found.")
    end
  end
end
