require 'rails_helper'

RSpec.describe "managers/edit", type: :view do
  before(:each) do
    @manager = assign(:manager, Manager.create!(
      :user => nil,
      :team => nil
    ))
  end

  it "renders the edit manager form" do
    render

    assert_select "form[action=?][method=?]", manager_path(@manager), "post" do

      assert_select "input[name=?]", "manager[user_id]"

      assert_select "input[name=?]", "manager[team_id]"
    end
  end
end
