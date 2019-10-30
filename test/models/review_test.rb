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
end
