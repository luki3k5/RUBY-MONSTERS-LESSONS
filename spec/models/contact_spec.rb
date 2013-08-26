require 'spec_helper'

describe Contact do
  let(:contact) { Contact.create(first_name: "FirstName") }

  it 'should not allow creation without name' do
    expect {Contact.create!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'should allow to get the user by first name' do
    c = Contact.where(first_name:"FirstName").first
    expect(c).to eq(Contact.first)
  end

  it 'should be able to crate user w/o phone_no' do
    c = Contact.create(first_name: "Someone")
    expect(c.valid?).to be_true
  end

  # PLEASE NOTE HOW WE ARE PASSING THE BLOCK TO 'expect' not THE METHOD ARGUMENTS!!!
  it 'should not be able to create user with phone_no < 6' do
    expect { Contact.create!(first_name: "Someone", phone_no: 12345)}.to raise_error(ActiveRecord::RecordInvalid)
  end

end
