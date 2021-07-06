require 'rails_helper'

RSpec.describe GitController, type: :controller do

  describe "GET #add" do
    it "returns http success" do
      get :add
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #." do
    it "returns http success" do
      get :.
      expect(response).to have_http_status(:success)
    end
  end

end
