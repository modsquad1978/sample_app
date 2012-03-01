# == Schema Information
#
# Table name: contacts
#
#  id           :integer         not null, primary key
#  first_name   :string(255)
#  last_name    :string(255)
#  email        :string(255)
#  work_phone   :string(255)
#  mobile_phone :string(255)
#  company      :string(255)
#  address_1    :string(255)
#  address_2    :string(255)
#  city         :string(255)
#  state        :string(255)
#  linkedin     :string(255)
#  facebook     :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

require 'spec_helper'

describe Contact do
  before { @contact = Contact.new(first_name: "Mark", last_name: "O'Donnell", 
																	email: "mark.odonnell@azzurgroup.com",
																	work_phone:"484-336-4440", mobile_phone:"484-336-4440", 
																	company: "Azzur Group, LLC",
																	address_1: "726 Fitzwatertown Rd.",
																	address_2: "Suite 6",
																	city: "Willow Grove",
																	state: "PA",
																	linkedin: "www.linkedin.com/markaodonnell",
																	facebook: "www.facebook.com/markaodonnell" ) }
	subject { @contact }
	
	it {should respond_to(:first_name)}
	it {should respond_to(:last_name)}
	it {should respond_to(:email)}
	it {should respond_to(:work_phone)}
	it {should respond_to(:mobile_phone)}
	it {should respond_to(:company)}
	it {should respond_to(:address_1)}
	it {should respond_to(:address_2)}
	it {should respond_to(:city)}
	it {should respond_to(:state)}
	it {should respond_to(:linkedin)}
	it {should respond_to(:facebook)}
	
	it {should be_valid}
	
	describe "when first name is not present" do
		before {@contact.first_name = " "}
		it {should_not be_valid}
	end
	
	describe "when last name is not present" do
		before {@contact.last_name = " "}
		it {should_not be_valid}
	end
	
	describe "when email format is invalid" do
		invalid_addresses = %w[user@foo.com user_at_foo.org example.user@foo.]
		invalid_addresses.each do |invalid_address|
			before {@contact.email = invalid_address}
			it {should_not be_valid}
		end
	end
	
	describe "when email format is valid" do
		valid_addresses = %w[user@foo.com A_USER@f.b.org frst.lst@foo.jp a+b@baz.cm]
		valid_addresses.each do |valid_address|
			before {@contact.email = valid_address}
			it {should be_valid}
		end
	end
	
	describe "when email address is already taken" do
		before do
			contact_with_same_email = @contact.dup
			contact_with_same_email.email = @contact.email.upcase
			contact_with_same_email.save
		end
		
		it {should_not be_valid}
	end
end
