# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  genre            :string
#  isbn             :string
#  publication_date :date
#  publisher        :string
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    books.each do |b|
      assert b.valid?, b.errors.full_messages.inspect
    end
  end

  test "name should not be too long" do
    books.title = "a" * 51
    assert_not @user.valid? 
    end
end
