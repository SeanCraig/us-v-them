require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :sport => "Sport",
        :location => "Location"
      ),
      stub_model(Game,
        :sport => "Sport",
        :location => "Location"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sport".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
