class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :phone_no
  paginates_per 1
end
