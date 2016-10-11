require 'rails_helper'

RSpec.describe "consultants/new", type: :view do
  before(:each) do
    assign(:consultant, Consultant.new(
      :last_name => "MyString",
      :first_name => "MyString"
    ))
  end

  it "renders new consultant form" do
    render

    assert_select "form[action=?][method=?]", consultants_path, "post" do

      assert_select "input#consultant_last_name[name=?]", "consultant[last_name]"

      assert_select "input#consultant_first_name[name=?]", "consultant[first_name]"
    end
  end
end
