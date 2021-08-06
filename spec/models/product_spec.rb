require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :cost }
  it("titleizes the name of an product") do
    product = Product.create({name: "hot dog", origin: "France", cost: 5.00})
    expect(product.name).to(eq("Hot Dog"))
  end
end