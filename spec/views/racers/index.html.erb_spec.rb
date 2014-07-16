require 'rails_helper'

RSpec.describe "racers/index", :type => :view do
  before(:each) do
    assign(:racers, [
      Racer.create!(
        :name => "Name",
        :height => 1
      ),
      Racer.create!(
        :name => "Name",
        :height => 1
      )
    ])
  end

  it "renders a list of racers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
