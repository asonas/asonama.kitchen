require 'rails_helper'

RSpec.describe "ingredients/show", :type => :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :recipe => nil,
      :name => "Name",
      :amount => "",
      :unit => "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Unit/)
  end
end
