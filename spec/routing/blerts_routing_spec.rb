require "spec_helper"

describe BlertsController do
  describe "routing" do

    it "routes to #index" do
      get("/blerts").should route_to("blerts#index")
    end

    it "routes to #new" do
      get("/blerts/new").should route_to("blerts#new")
    end

    it "routes to #show" do
      get("/blerts/1").should route_to("blerts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blerts/1/edit").should route_to("blerts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blerts").should route_to("blerts#create")
    end

    it "routes to #update" do
      put("/blerts/1").should route_to("blerts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blerts/1").should route_to("blerts#destroy", :id => "1")
    end

  end
end
