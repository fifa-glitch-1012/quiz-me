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
    books.each do |b|
      assert b.valid?, b.errors.full_messages.inspect
    end
  end
end
