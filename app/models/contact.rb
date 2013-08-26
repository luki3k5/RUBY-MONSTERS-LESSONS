class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :phone_no

  validates_presence_of :first_name
  # conditional validtion for the phone_no to only check it if we have passed the phone no. 
  # so you could save user w/o one but if you pass one it has to be min 6 characters (digits) 
  # here is the READ about why LAMBDA: http://stackoverflow.com/questions/7312073/rails-conditional-validation
  validates_length_of :phone_no, minimum: 6, if: lambda { !self.phone_no.blank? }

end
