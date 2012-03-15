class Resource < ActiveRecord::Base
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  	has_many :projects, :dependent => :destroy
  	has_many :tasks, :dependent => :destroy

    validates :name,  :presence   => true,
                      :length     => { :maximum => 50 }
    validates :email, :presence   => true,
                      :format     => { :with => email_regex },
                      :uniqueness => { :case_sensitive => false }
end
