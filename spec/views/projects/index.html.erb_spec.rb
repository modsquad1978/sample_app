require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
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
      ),
      stub_model(Project,
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
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Requestor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Asset Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Room Num".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Doc Num".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Doc Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Application".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Verion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vendor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Assigned To".to_s, :count => 2
  end
end
