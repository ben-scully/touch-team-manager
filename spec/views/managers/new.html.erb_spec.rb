require 'rails_helper'

RSpec.describe "managers/new", type: :view do
  before(:each) do
    assign(:manager, Manager.new(
      :user => nil,
      :team => nil
    ))
  end

  it "renders new manager form" do
    render

    assert_select "form[action=?][method=?]", managers_path, "post" do

      assert_select "input[name=?]", "manager[user_id]"

      assert_select "input[name=?]", "manager[team_id]"
    end
  end
end
