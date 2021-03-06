require 'spec_helper'

describe CarsController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(response).to be_success
    end
  end

  describe "GET 'summary'" do
    it "returns http success" do
      get 'summary'
      expect(response).to be_success
    end
  end

end
