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

class Contact < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :email, :work_phone, :mobile_phone, :company, 
									:address_1, :address_2, :city, :state, :linkedin, :facebook 
									
	validates :first_name, presence: true
	validates :last_name, presence: true
	valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: valid_email_regex},
										uniqueness: {case_sensitive: false}
end
