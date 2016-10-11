require 'rails_helper'

RSpec.describe "consultants/index", type: :view do
  before(:each) do
    assign(:consultants, [
      Consultant.create!(
        :last_name => "Last Name",
        :first_name => "First Name"
      ),
      Consultant.create!(
        :last_name => "Last Name",
        :first_name => "First Name"
      )
    ])
  end

  it "renders a list of consultants" do
    render
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
  end
end
