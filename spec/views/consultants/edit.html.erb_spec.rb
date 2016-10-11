require 'rails_helper'

RSpec.describe "consultants/edit", type: :view do
  before(:each) do
    @consultant = assign(:consultant, Consultant.create!(
      :last_name => "MyString",
      :first_name => "MyString"
    ))
  end

  it "renders the edit consultant form" do
    render

    assert_select "form[action=?][method=?]", consultant_path(@consultant), "post" do

      assert_select "input#consultant_last_name[name=?]", "consultant[last_name]"

      assert_select "input#consultant_first_name[name=?]", "consultant[first_name]"
    end
  end
end
