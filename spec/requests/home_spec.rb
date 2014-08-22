require 'rails_helper'

RSpec.describe "Home", :type => :request do
  describe "GET /" do
    it "return success code" do
      get root_path
      expect(response.status).to be(200)
    end
  end
end
