require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        name: "Name",
        description: "MyText",
        picture: "Picture"
      ),
      Recipe.create!(
        name: "Name",
        description: "MyText",
        picture: "Picture"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Picture".to_s, count: 2
  end
end
