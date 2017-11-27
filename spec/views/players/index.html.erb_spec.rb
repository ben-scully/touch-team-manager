require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        :user => nil,
        :team => nil
      ),
      Player.create!(
        :user => nil,
        :team => nil
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
