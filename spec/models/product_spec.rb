require 'rails_helper'

RSpec.describe Product, type: :model do
  
  it "is invalid without name, description" do
     expect(Product.new).to_not be_valid
  end

  it "is valid when name, description,type & price are provided" do
     expect(Product.new(:name => "New Pen",:description => "Test description",:type => "Pen", :price => 12)).to be_valid
  end

  it "is invalid price is not a number" do
     expect(Product.new(:name => "New Pen",:description => "Test description",:type => "Pen", :price => "abc")).to_not be_valid
  end

end