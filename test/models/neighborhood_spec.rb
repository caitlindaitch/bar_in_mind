require "rails_helper"

RSpec.describe Neighborhood, :type => :model do

 let(:neighborhood){Category.create!(name: "Columbia Heights", metro_stop: "Columbia Heights")}

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

# describe "model methods" do
#  describe "#find" do
#    it "should list all of a category's quotes" do
#      expect(category.quotes).not_to be_nil
#    end
#  end
#  describe "#find_by_author" do
#    context "when I try to find a quote by author name" do
#      it "can be search by author" do
#        quotes = Quote.find_by_author("Einstein")
#        quotes.each do |quote|
#          expect(quote).to have_attributes(:author => "Einstein")
#        end
#      end
#    end
#
#    describe "#find_by_keyword" do
#      context "when I try to find a quote by a search term" do
#        it "can be search by key word" do
#          quotes = Quote.find_by_keyword("bike")
#            quotes.each do |quote|
#              expect(quote.text).to include("bike")
#            end
#        end
#      end
#    end
#
#  end
# end
