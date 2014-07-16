require 'rails_helper'

RSpec.describe "racers/show", :type => :view do
  before(:each) do
    @racer = assign(:racer, Racer.create!(
      :name => "Name",
      :height => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
