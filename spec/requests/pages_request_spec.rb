require 'rails_helper'

RSpec.describe "Pages", type: :request do

  describe "GET /" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /home" do
    it "returns http success" do
      get "/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /yello" do
    it "returns http success" do
      get "/yello"
      expect(response).to have_http_status(:success)
    end
    it " with params returns http success" do
      params = %w[aaa azerty 123 nil]
      get "/yello/#{params.sample 1}"
      expect(response).to have_http_status(:success)
    end
  end

end
