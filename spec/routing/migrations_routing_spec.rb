require "spec_helper"

describe MigrationsController do
  describe "routing" do

    it "routes to #index" do
      get("/migrations").should route_to("migrations#index")
    end

    it "routes to #new" do
      get("/migrations/new").should route_to("migrations#new")
    end

    it "routes to #show" do
      get("/migrations/1").should route_to("migrations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/migrations/1/edit").should route_to("migrations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/migrations").should route_to("migrations#create")
    end

    it "routes to #update" do
      put("/migrations/1").should route_to("migrations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/migrations/1").should route_to("migrations#destroy", :id => "1")
    end

  end
end
