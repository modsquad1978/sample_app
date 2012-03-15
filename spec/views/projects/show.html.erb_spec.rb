require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_number => "Project Number",
      :site => "Site",
      :project_name => "Project Name",
      :requestor => "Requestor",
      :customer => "Customer",
      :status => "Status",
      :department => "Department",
      :asset_number => "Asset Number",
      :type => "Type",
      :model => "Model",
      :serial_number => "Serial Number",
      :manufacturer => "Manufacturer",
      :room_num => "Room Num",
      :doc_num => "Doc Num",
      :doc_title => "Doc Title",
      :application => "Application",
      :verion => "Verion",
      :vendor => "Vendor",
      :assigned_to => "Assigned To"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Site/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Requestor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Department/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Asset Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Serial Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manufacturer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Room Num/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Doc Num/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Doc Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Application/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Verion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vendor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Assigned To/)
  end
end
