require "spec_helper"

describe PondsController do
  describe "routing" do

    it "routes to #index" do
      get("/ponds").should route_to("ponds#index")
    end

    it "routes to #new" do
      get("/ponds/new").should route_to("ponds#new")
    end

    it "routes to #show" do
      get("/ponds/1").should route_to("ponds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ponds/1/edit").should route_to("ponds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ponds").should route_to("ponds#create")
    end

    it "routes to #update" do
      put("/ponds/1").should route_to("ponds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ponds/1").should route_to("ponds#destroy", :id => "1")
    end

  end
end
