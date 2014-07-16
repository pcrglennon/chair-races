require 'rails_helper'

RSpec.describe "racers/edit", :type => :view do
  before(:each) do
    @racer = assign(:racer, Racer.create!(
      :name => "MyString",
      :height => 1
    ))
  end

  it "renders the edit racer form" do
    render

    assert_select "form[action=?][method=?]", racer_path(@racer), "post" do

      assert_select "input#racer_name[name=?]", "racer[name]"

      assert_select "input#racer_height[name=?]", "racer[height]"
    end
  end
end
