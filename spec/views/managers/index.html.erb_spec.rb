require 'rails_helper'

RSpec.describe "managers/index", type: :view do
  before(:each) do
    assign(:managers, [
      Manager.create!(
        :user => nil,
        :team => nil
      ),
      Manager.create!(
        :user => nil,
        :team => nil
      )
    ])
  end

  it "renders a list of managers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
