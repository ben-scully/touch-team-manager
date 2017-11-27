require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        :user => nil,
        :team => nil
      ),
      Coach.create!(
        :user => nil,
        :team => nil
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
