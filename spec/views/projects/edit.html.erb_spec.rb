require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_number => "MyString",
      :site => "MyString",
      :project_name => "MyString",
      :requestor => "MyString",
      :customer => "MyString",
      :status => "MyString",
      :department => "MyString",
      :asset_number => "MyString",
      :type => "",
      :model => "MyString",
      :serial_number => "MyString",
      :manufacturer => "MyString",
      :room_num => "MyString",
      :doc_num => "MyString",
      :doc_title => "MyString",
      :application => "MyString",
      :verion => "MyString",
      :vendor => "MyString",
      :assigned_to => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_project_number", :name => "project[project_number]"
      assert_select "input#project_site", :name => "project[site]"
      assert_select "input#project_project_name", :name => "project[project_name]"
      assert_select "input#project_requestor", :name => "project[requestor]"
      assert_select "input#project_customer", :name => "project[customer]"
      assert_select "input#project_status", :name => "project[status]"
      assert_select "input#project_department", :name => "project[department]"
      assert_select "input#project_asset_number", :name => "project[asset_number]"
      assert_select "input#project_type", :name => "project[type]"
      assert_select "input#project_model", :name => "project[model]"
      assert_select "input#project_serial_number", :name => "project[serial_number]"
      assert_select "input#project_manufacturer", :name => "project[manufacturer]"
      assert_select "input#project_room_num", :name => "project[room_num]"
      assert_select "input#project_doc_num", :name => "project[doc_num]"
      assert_select "input#project_doc_title", :name => "project[doc_title]"
      assert_select "input#project_application", :name => "project[application]"
      assert_select "input#project_verion", :name => "project[verion]"
      assert_select "input#project_vendor", :name => "project[vendor]"
      assert_select "input#project_assigned_to", :name => "project[assigned_to]"
    end
  end
end
