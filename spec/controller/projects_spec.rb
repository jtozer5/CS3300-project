require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  login_user

  let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }

  let(:valid_session) { {} }

  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end