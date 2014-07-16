require 'rails_helper'

RSpec.describe "Racers", :type => :request do
  describe "GET /racers" do
    it "works! (now write some real specs)" do
      get racers_path
      expect(response.status).to be(200)
    end
  end
end
