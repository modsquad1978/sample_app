require 'spec_helper'

describe ContactsController do

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end  
  describe "GET 'edit'" do
    it "returns http success" do
      response.should be_success
    end        
  end
end
