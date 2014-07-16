require 'rails_helper'

RSpec.describe "racers/new", :type => :view do
  before(:each) do
    assign(:racer, Racer.new(
      :name => "MyString",
      :height => 1
    ))
  end

  it "renders new racer form" do
    render

    assert_select "form[action=?][method=?]", racers_path, "post" do

      assert_select "input#racer_name[name=?]", "racer[name]"

      assert_select "input#racer_height[name=?]", "racer[height]"
    end
  end
end
