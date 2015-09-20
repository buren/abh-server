require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe "GET #weight_length" do
    it "returns http success" do
      get :weight_length
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #weight_length_chart" do
    it "returns http success" do
      get :weight_length_chart
      expect(response).to have_http_status(:success)
    end
  end

end
