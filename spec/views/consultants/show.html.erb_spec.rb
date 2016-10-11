require 'rails_helper'

RSpec.describe "consultants/show", type: :view do
  before(:each) do
    @consultant = assign(:consultant, Consultant.create!(
      :last_name => "Last Name",
      :first_name => "First Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
  end
end
