# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    users.each do |u|
      assert u.valid?, u.errors.full_messages.inspect
    end
  end

  test "first name with more than 50 characters should be invalid" do
    b = users(:one)
    b.first_name = "a" * 51
    assert_not b.valid?
    b.first_name = "a" * 500
    assert_not b.valid?
  end

  test "last name with more than 50 characters should be invalid" do
    b = users(:one)
    b.last_name = "a" * 51
    assert_not b.valid?
    b.last_name = "a" * 120000
    assert_not b.valid?
  end

  test "last name that is missing or empty should be invalid" do
    b = users(:one)
    b.last_name = nil
    assert_not b.valid?
    b.last_name = ""
    assert_not b.valid?
  end

  test "email that does not fit the email address standard should be invalid" do
    b = users(:one)
    b.email = "X-575-04X00-X"
    assert_not b.valid?
    b.email = "X-575-040-"
    assert_not b.valid?
  end

  test "email that is missing or empty should be invalid" do
    b = users(:one)
    b.email = nil
    assert_not b.valid?
    b.email = ""
    assert_not b.valid?
  end

  test "email that is not unique should be invalid" do
    q = users(:one).dup
    assert_not q.valid?
  end

end
