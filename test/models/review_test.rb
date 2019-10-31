# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  full_text  :text
#  score      :integer
#  summary    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "fixtures are valid" do
    reviews.each do |r|
      assert r.valid?, r.errors.full_messages.inspect
    end
  end

  test "score less than 0 should be invalid" do
    b = reviews(:one)
    b.score = -1
    assert_not b.valid?
    b.score = -58
    assert_not b.valid?
  end
  
  test "score greater than 5 should be invalid" do
    b = reviews(:one)
    b.score = 6
    assert_not b.valid?
    b.score = 55
    assert_not b.valid?
  end
  
  test "score that is missing should be invalid" do
    b = reviews(:one)
    b.score = nil
    assert_not b.valid?
    b.score = ""
    assert_not b.valid?
  end


  test "summary with over 200 characters should be invalid" do
    b = reviews(:one)
    b.summary = "a" * 204
    assert_not b.valid?
    b.summary = "a" * 500
    assert_not b.valid?
  end
  
  test "summary that is missing or empty should be invalid" do
    b = reviews(:one)
    b.summary = nil
    assert_not b.valid?
    b.summary = ""
    assert_not b.valid?
  end

  test "full text that is over 10,000 characters should be invalid" do
    b = reviews(:one)
    b.summary = "a" * 10001
    assert_not b.valid?
    b.summary = "a" * 120000
    assert_not b.valid?
  end

end
