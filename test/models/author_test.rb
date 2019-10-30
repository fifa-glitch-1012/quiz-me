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
    authors.each do |a|
      assert a.valid?, a.errors.full_messages.inspect
    end
  end
end
