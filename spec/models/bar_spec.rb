require "rails_helper"

RSpec.describe Bar, :type => :model do

 let(:bar){Category.create!(name: "Wonderland Ballroom", category: "Dive Bar", Music: "DJ", price_meter: "$", neighborhood_id: 1)}

  describe "attributes of a Bar" do
   it "has the class Bar" do
     expect(bar).to be_a(Bar)
   end
   it "has a name" do
     expect(bar.name).to eq("Wonderland Ballroom")
   end
   it "has a category" do
     expect(bar.category).to eq("Dive Bar")
   end
   it "has a music type" do
     expect(bar.music).to eq("DJ")
   end
   it "has a price level" do
     expect(bar.price_meter).to eq("$")
   end
  end

end
