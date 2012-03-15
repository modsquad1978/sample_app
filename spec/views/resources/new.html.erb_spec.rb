require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :name => "MyString",
      :email => "MyString",
      :title => "MyString",
      :home_addr => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :base_rate => "9.99",
      :resume => "MyText"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resources_path, :method => "post" do
      assert_select "input#resource_name", :name => "resource[name]"
      assert_select "input#resource_email", :name => "resource[email]"
      assert_select "input#resource_title", :name => "resource[title]"
      assert_select "input#resource_home_addr", :name => "resource[home_addr]"
      assert_select "input#resource_city", :name => "resource[city]"
      assert_select "input#resource_state", :name => "resource[state]"
      assert_select "input#resource_zip", :name => "resource[zip]"
      assert_select "input#resource_base_rate", :name => "resource[base_rate]"
      assert_select "textarea#resource_resume", :name => "resource[resume]"
    end
  end
end
