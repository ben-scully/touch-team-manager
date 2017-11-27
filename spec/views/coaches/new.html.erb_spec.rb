require 'rails_helper'

RSpec.describe "coaches/new", type: :view do
  before(:each) do
    assign(:coach, Coach.new(
      :user => nil,
      :team => nil
    ))
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do

      assert_select "input[name=?]", "coach[user_id]"

      assert_select "input[name=?]", "coach[team_id]"
    end
  end
end
