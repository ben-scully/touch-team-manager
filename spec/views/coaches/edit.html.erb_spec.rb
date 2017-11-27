require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :user => nil,
      :team => nil
    ))
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(@coach), "post" do

      assert_select "input[name=?]", "coach[user_id]"

      assert_select "input[name=?]", "coach[team_id]"
    end
  end
end
