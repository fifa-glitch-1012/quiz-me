# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  dob        :date
#  dod        :date
#  first_name :string
#  last_name  :string
#  webpage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  
  test "fixtures are valid" do
    authors.each_with_index do |a,i|
      assert a.valid?, "#{i}: #{a.errors.full_messages.inspect}"
    end
  end
  
  test "first name with more than 50 characters should be invalid" do
    b = authors(:one)
    b.first_name = "a" * 55
    assert_not b.valid?
    b.first_name = "a" * 58
    assert_not b.valid?
  end
  
  test "last name with more than 50 characters should be invalid" do
    b = authors(:one)
    b.last_name = "a" * 52
    assert_not b.valid?
    b.last_name = "a" * 55
    assert_not b.valid?
  end
  
  test "last name that is missing or empty should be invalid" do
    b = authors(:one)
    b.last_name = nil
    assert_not b.valid?
    b.last_name = ""
    assert_not b.valid?
  end

  test "webpage that does not fit the URL standard should be invalid" do
    b = authors(:one)
    b.webpage = "X-575-04X00-X"
    assert_not b.valid?
    b.webpage = "X-575-040-"
    assert_not b.valid?
  end

  test "dob that is after today should be invalid" do
    b = authors(:one)
    b.dob = '10 November 2022'
    assert_not b.valid?
    b.dob = '10 December 2033'
    assert_not b.valid?
  end


  #####FIX THIS TEST
  test "dob that is missing should be invalid" do
    b = authors(:one)
    b.dob = nil
    assert_not b.valid?
    b.dob = ""
    assert_not b.valid?
  end

  test "dod that is before the dob should be invalid" do
    b = authors(:one)
    b.dod = '10 December 1'
    assert_not b.valid?
    b.dod = '10 December 2'
    assert_not b.valid?
  end

  test "dod that is after today should be invalid" do
    b = authors(:one)
    b.dod = '10 November 2022'
    assert_not b.valid?
    b.dod = '10 December 2033'
    assert_not b.valid?
  end


end
