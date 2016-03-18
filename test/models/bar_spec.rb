require "rails_helper"

RSpec.describe Bar, :type => :model do

 let(:bar){Category.create!(name: "Wonderland Ballroom", category: "Dive Bar", Music: "DJ", price_meter: "$")}

  describe "attributes of a Neighborhood" do
   it "has the class Neighborhood" do
     expect(neighborhood).to be_a(Neighborhood)
   end
   it "has a name" do
     expect(neighborhood.name).to eq("Columbia Heights")
   end
   it "has a metro stop" do
     expect(neighborhood.metro_stop).to eq("Columbia Heights")
   end
  end

end
